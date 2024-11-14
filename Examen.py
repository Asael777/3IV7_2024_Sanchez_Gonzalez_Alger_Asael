import tkinter as tk
from tkinter import ttk, messagebox, simpledialog
import json

# Ruta del archivo donde se guardarán los NPCs
file_path = 'npcs_data.json'

# Función para cargar los NPCs desde el archivo
def cargar_npcs():
    try:
        with open(file_path, 'r') as file:
            return json.load(file)
    except FileNotFoundError:
        return []  # Si el archivo no existe, devuelve una lista vacía

# Función para guardar los NPCs en el archivo
def guardar_npcs():
    with open(file_path, 'w') as file:
        json.dump(npcs, file, indent=4)

# Cargar los NPCs desde el archivo al iniciar el programa
npcs = cargar_npcs()

# Función para agregar un NPC
def registrar_npc():
    npc = {
        'Nombre': simpledialog.askstring("Registro de NPC", "Nombre del NPC:"),
        'Daño': simpledialog.askstring("Registro de NPC", "Daño del NPC:"),
        'Defensa': simpledialog.askstring("Registro de NPC", "Defensa del NPC:"),
        'Salud del NPC': simpledialog.askstring("Registro de NPC", "Salud del NPC:"),
        'Condiciones de aparición': simpledialog.askstring("Registro de NPC", "Condiciones de aparición:"),
        'Invocación': simpledialog.askstring("Registro de NPC", "Invocación del NPC:"),
        'Recompensas': simpledialog.askstring("Registro de NPC", "Recompensas:"),
        'Descripción': simpledialog.askstring("Registro de NPC", "Descripción:"),
        'Hostilidad': simpledialog.askstring("Registro de NPC", "Hostilidad del NPC:"),
        'Rareza': simpledialog.askstring("Registro de NPC", "Rareza:")
    }
    npcs.append(npc)
    guardar_npcs()  # Guardar los NPCs después de registrar uno nuevo
    messagebox.showinfo("Registro", f"NPC '{npc['Nombre']}' registrado con éxito.")

# Función para editar un NPC
def editar_npc():
    nombre = simpledialog.askstring("Editar NPC", "Nombre del NPC a editar:")
    for npc in npcs:
        if npc['Nombre'] == nombre:
            npc['Daño'] = simpledialog.askstring("Editar NPC", "Daño del NPC:", initialvalue=npc['Daño'])
            npc['Defensa'] = simpledialog.askstring("Editar NPC", "Defensa del NPC:", initialvalue=npc['Defensa'])
            npc['Salud del NPC'] = simpledialog.askstring("Editar NPC", "Salud del NPC:", initialvalue=npc['Salud del NPC'])
            npc['Condiciones de aparición'] = simpledialog.askstring("Editar NPC", "Condiciones de aparición:", initialvalue=npc['Condiciones de aparición'])
            npc['Invocación'] = simpledialog.askstring("Editar NPC", "Invocación del NPC:", initialvalue=npc['Invocación'])
            npc['Recompensas'] = simpledialog.askstring("Editar NPC", "Recompensas:", initialvalue=npc['Recompensas'])
            npc['Descripción'] = simpledialog.askstring("Editar NPC", "Descripción:", initialvalue=npc['Descripción'])
            npc['Hostilidad'] = simpledialog.askstring("Editar NPC", "Hostilidad del NPC:", initialvalue=npc['Hostilidad'])
            npc['Rareza'] = simpledialog.askstring("Editar NPC", "Rareza:", initialvalue=npc['Rareza'])
            guardar_npcs()  # Guardar los cambios en el archivo
            messagebox.showinfo("Edición", f"NPC '{nombre}' editado con éxito.")
            return
    messagebox.showerror("Error", "NPC no encontrado.")

# Función para buscar un NPC
def buscar_npc():
    nombre = simpledialog.askstring("Buscar NPC", "Nombre del NPC a buscar:")
    for npc in npcs:
        if npc['Nombre'] == nombre:
            info = "\n".join([f"{k}: {v}" for k, v in npc.items()])
            messagebox.showinfo("NPC Encontrado", info)
            return
    messagebox.showerror("Error", "NPC no encontrado.")

# Función para mostrar todos los NPCs
def listar_npcs():
    listar_ventana = tk.Toplevel()
    listar_ventana.title("Lista de NPCs")
    columns = ["Nombre", "Daño", "Defensa", "Salud del NPC", "Condiciones de aparición", "Invocación", "Recompensas", "Descripción", "Hostilidad", "Rareza"]
    tree = ttk.Treeview(listar_ventana, columns=columns, show="headings")
    for column in columns:
        tree.heading(column, text=column)
    for npc in npcs:
        # Solo incluye los valores en el orden de las columnas
        values = [npc.get(column, "") for column in columns]
        tree.insert("", tk.END, values=values)
    tree.pack()

# Función para eliminar un NPC
def eliminar_npc():
    nombre = simpledialog.askstring("Eliminar NPC", "Nombre del NPC a eliminar:")
    for npc in npcs:
        if npc['Nombre'] == nombre:
            npcs.remove(npc)
            guardar_npcs()  # Guardar los cambios después de eliminar un NPC
            messagebox.showinfo("Eliminación", f"NPC '{nombre}' eliminado con éxito.")
            return
    messagebox.showerror("Error", "NPC no encontrado.")

# Función para mostrar ayuda sobre las características
def mostrar_ayuda():
    ayuda_texto = (
        "Definiciones de Características:\n\n"
        "Nombre: Nombre del NPC.\n"
        "Daño: Cantidad de daño que puede causar el NPC.\n"
        "Defensa: Nivel de defensa del NPC.\n"
        "Salud del NPC: Nivel de salud o vida del NPC.\n"
        "Condiciones de aparición: Condiciones necesarias para que el NPC aparezca.\n"
        "Invocación: Requisitos o métodos para invocar al NPC.\n"
        "Recompensas: Objetos que el NPC otorga al jugador.\n"
        "Descripción: Breve descripción del NPC.\n"
        "Hostilidad: Nivel de agresividad o comportamiento hostil del NPC.\n"
        "Rareza: Nivel de rareza o importancia del NPC."
    )
    messagebox.showinfo("Ayuda - Características del NPC", ayuda_texto)

# Menú principal
def main_menu():
    root = tk.Tk()
    root.title("NPCs de Terraria")
    tk.Button(root, text="Registrar NPC", command=registrar_npc).pack(pady=5)
    tk.Button(root, text="Editar NPC", command=editar_npc).pack(pady=5)
    tk.Button(root, text="Buscar NPC", command=buscar_npc).pack(pady=5)
    tk.Button(root, text="Listar NPCs", command=listar_npcs).pack(pady=5)
    tk.Button(root, text="Eliminar NPC", command=eliminar_npc).pack(pady=5)
    tk.Button(root, text="Ayuda", command=mostrar_ayuda).pack(pady=5)
    root.mainloop()

main_menu()