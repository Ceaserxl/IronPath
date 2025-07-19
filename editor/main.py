import os
import tkinter as tk
from tkinter import ttk, messagebox
from slpp import slpp as lua

# ---------- Guide Loader ----------
def load_guide_from_lua(file_path):
    with open(file_path, "r", encoding="utf-8") as f:
        content = f.read()
    try:
        table_str = content.split("=", 1)[1].strip()
        return lua.decode(table_str)
    except Exception as e:
        print(f"❌ Failed to load guide {file_path}: {e}")
        return None

def format_lua_value(val):
    if isinstance(val, str):
        # Don't double-quote if already quoted
        if val.startswith('"') and val.endswith('"'):
            return val
        return f'"{val}"'
    elif isinstance(val, bool):
        return "true" if val else "false"
    elif isinstance(val, list):
        return "{" + ", ".join(format_lua_value(v) for v in val) + "}"
    elif val is None:
        return "nil"
    return str(val)

def format_lua_table(table, indent="  "):
    lines = ["IronPath_Guide = {"]
    meta_keys = ["zone", "easyName", "minLevel", "levelRange", "race", "faction", "author"]
    for key in meta_keys:
        if key in table:
            lines.append(f'{indent}{key.ljust(9)} = {format_lua_value(table[key])},')
    lines.append(f'{indent}steps = {{')
    for step in table.get("steps", []):
        fields = []
        for k, v in step.items():
            fields.append(f'{k}={format_lua_value(v)}')
        lines.append(f'{indent*2}{{ {", ".join(fields)} }},')
    lines.append(f'{indent}}}')
    lines.append("}")
    lines.append("")
    lines.append("IronPath:RegisterGuide(IronPath_Guide)")
    return "\n".join(lines)

def save_full_guide(guide, path):
    content = format_lua_table(guide)
    with open(path, "w", encoding="utf-8") as f:
        f.write(content)

# ---------- Guide Finder ----------
def find_guides():
    base_path = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "guides"))
    guides = []
    for root, _, files in os.walk(base_path):
        for file in files:
            if file.endswith(".lua") and "_Zygor" not in file:
                full_path = os.path.join(root, file)
                guide = load_guide_from_lua(full_path)
                if guide and "steps" in guide:
                    faction = guide.get("faction", "?")
                    easy_name = guide.get("easyName", os.path.basename(file))
                    abbrev = faction[0].upper() if isinstance(faction, str) else "?"
                    guides.append((f"{abbrev} - {easy_name}", full_path, guide))
    return guides

# ---------- UI ----------
root = tk.Tk()
root.title("IronPath Guide Editor")
root.geometry("1400x800")

style = ttk.Style()
style.configure("TLabel", font=("Segoe UI", 10))
style.configure("TEntry", font=("Segoe UI", 10))
style.configure("TButton", font=("Segoe UI", 10))

left = ttk.Frame(root, width=250)
middle = ttk.Frame(root)
right = ttk.Frame(root)
left.pack(side=tk.LEFT, fill=tk.Y, padx=10, pady=10)
middle.pack(side=tk.LEFT, fill=tk.BOTH, expand=True, padx=10, pady=10)
right.pack(side=tk.LEFT, fill=tk.BOTH, expand=True, padx=10, pady=10)

ttk.Label(left, text="Guides").pack(anchor="w")
guide_listbox = tk.Listbox(left, width=35)
guide_listbox.pack(fill=tk.BOTH, expand=True)

meta_fields = {}
ttk.Label(middle, text="Metadata").pack(anchor="w")
meta_frame = ttk.Frame(middle)
meta_frame.pack(fill=tk.X)
meta_keys = ["zone", "easyName", "minLevel", "levelRange", "race", "faction", "author"]
for i, key in enumerate(meta_keys):
    ttk.Label(meta_frame, text=key.title()).grid(row=i, column=0, sticky="w", padx=5, pady=2)
    entry = ttk.Entry(meta_frame)
    entry.grid(row=i, column=1, sticky="ew", padx=5, pady=2)
    meta_frame.columnconfigure(1, weight=1)
    meta_fields[key] = entry

def save_guide_changes():
    if selected_guide and selected_guide_path:
        for k in meta_fields:
            val = meta_fields[k].get()
            if k == "minLevel":
                try:
                    val = int(val)
                except ValueError:
                    val = 1
            selected_guide[k] = val
        save_full_guide(selected_guide, selected_guide_path)
        messagebox.showinfo("Saved", "Guide metadata saved.")

ttk.Button(middle, text="Save Guide", command=save_guide_changes).pack(pady=10)
ttk.Label(middle, text="Steps").pack(anchor="w", pady=(10, 0))
step_listbox = tk.Listbox(middle, height=20, width=50)
step_listbox.pack(fill=tk.BOTH, expand=True)

step_fields = {}
ttk.Label(right, text="Step Fields").pack(anchor="w")
step_fields_frame = ttk.Frame(right)
step_fields_frame.pack(fill=tk.BOTH, expand=True)

step_keys = ["action", "quest", "qid", "npc", "npcID", "item", "itemID", "target",
             "coords", "note", "condition", "zone", "level", "class", "race"]

def populate_step_fields(step):
    for widget in step_fields_frame.winfo_children():
        widget.destroy()
    step_fields.clear()
    for i, key in enumerate(step_keys):
        r, c = divmod(i, 2)
        ttk.Label(step_fields_frame, text=key).grid(row=r, column=c*2, sticky="w", padx=4, pady=2)
        val = step.get(key, "")
        entry = ttk.Entry(step_fields_frame)
        entry.insert(0, str(val))
        entry.grid(row=r, column=c*2 + 1, sticky="ew", padx=4, pady=2)
        step_fields[key] = entry
        step_fields_frame.columnconfigure(c*2 + 1, weight=1)

def update_step_from_fields():
    idx = step_listbox.curselection()
    if idx and selected_guide:
        step = selected_guide["steps"][idx[0]]
        for k, e in step_fields.items():
            val = e.get()
            if val.lower() == "true":
                step[k] = True
            elif val.lower() == "false":
                step[k] = False
            else:
                try:
                    step[k] = int(val) if val.isdigit() else float(val)
                except:
                    step[k] = val
        populate_step_fields(step)
        save_full_guide(selected_guide, selected_guide_path)
        messagebox.showinfo("Saved", "Step updated and saved.")

ttk.Button(right, text="Save Step", command=update_step_from_fields).pack(pady=10)

selected_guide = None
selected_guide_path = None

def on_guide_select(event):
    global selected_guide, selected_guide_path
    idx = guide_listbox.curselection()
    if idx:
        _, path, guide = loaded_guides[idx[0]]
        selected_guide = guide
        selected_guide_path = path

        for k in meta_fields:
            meta_fields[k].delete(0, tk.END)
            meta_fields[k].insert(0, str(guide.get(k, "")))

        step_listbox.delete(0, tk.END)
        for i, s in enumerate(guide.get("steps", [])):
            try:
                action = s.get("action", "?")
                step_listbox.insert(tk.END, f"{i+1} - {action}")
            except Exception as e:
                print(f"❌ Step {i+1} invalid: {e}")

def on_step_select(event):
    if selected_guide:
        idx = step_listbox.curselection()
        if idx:
            step = selected_guide["steps"][idx[0]]
            populate_step_fields(step)

guide_listbox.bind("<<ListboxSelect>>", on_guide_select)
step_listbox.bind("<<ListboxSelect>>", on_step_select)

loaded_guides = find_guides()
for name, path, _ in loaded_guides:
    guide_listbox.insert(tk.END, name)

root.mainloop()
