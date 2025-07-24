IronPath.Parser = {}

function IronPath.Parser:ParseSteps(stepText)
    local steps = {}
    local block = {}
    for line in stepText:gmatch("[^\r\n]+") do
        line = line:match("^%s*(.-)%s*$") -- trim

        if line:lower() == "step" then
            if next(block) then
                table.insert(steps, self:ParseSingleStep(block))
                block = {}
            end
        else
            table.insert(block, line)
        end
    end

    if next(block) then
        table.insert(steps, self:ParseSingleStep(block))
    end

    return steps
end

function IronPath.Parser:ParseSingleStep(lines)
    local step = {
        title = nil,
        tips = {},
        action = nil,
        extras = {},
        condition = nil
    }

    for _, line in ipairs(lines) do
        -- Title line
        if line:match("^_.*_$") then
            step.title = line:match("^_(.*)_"):gsub(":$", "")
        end

        -- Tips
        if line:match("^|tip") then
            table.insert(step.tips, line:gsub("^|tip", ""):match("^%s*(.-)%s*$"))
        end

        -- Condition
        if line:match("^|only if") then
            step.condition = line:match("^|only if%s+(.*)")
        end

        -- Not in sticky
        if line:find("|notinsticky") then
            step.extras.notinsticky = true
        end

        -- Popup
        if line:find("|popuptext") then
            step.extras.popup = line:match("|popuptext%s*(.+)")
        end

        -- Additional coords
        if line:match("^%[.-%]$") then
            local x, y = line:match("%[(%d+%.?%d*),(%d+%.?%d*)%]")
            if x and y then
                step.extras.additionalSpawns = step.extras.additionalSpawns or {}
                table.insert(step.extras.additionalSpawns, { x = tonumber(x), y = tonumber(y) })
            end
        end

        -- Action
        if not step.action and line:match("##%d+") then
            local actType, label, id = line:match("^(%a+)%s+(.-)##(%d+)")
            if actType and label and id then
                step.action = { type = actType, label = label, id = tonumber(id) }

                if actType == "kill" then
                    local qty, target = label:match("^(%d+)%s+(.+)")
                    if qty and target then
                        step.action.quantity = tonumber(qty)
                        step.action.target = target
                    end
                end
            end
        end
    end

    return step
end
