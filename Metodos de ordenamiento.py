import tkinter as tk
from tkinter import simpledialog, messagebox
import time

def bubble_sort(arr):
    start_time = time.time()
    n = len(arr)
    for i in range(n):
        for j in range(0, n-i-1):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]
    end_time = time.time()
    return arr, end_time - start_time

def insertion_sort(arr):
    start_time = time.time()
    for i in range(1, len(arr)):
        key = arr[i]
        j = i - 1
        while j >= 0 and key < arr[j]:
            arr[j + 1] = arr[j]
            j -= 1
        arr[j + 1] = key
    end_time = time.time()
    return arr, end_time - start_time

def quick_sort(arr):
    start_time = time.time()
    def partition(low, high):
        pivot = arr[high]
        i = low - 1
        for j in range(low, high):
            if arr[j] < pivot:
                i += 1
                arr[i], arr[j] = arr[j], arr[i]
        arr[i + 1], arr[high] = arr[high], arr[i + 1]
        return i + 1

    def quicksort(low, high):
        if low < high:
            pi = partition(low, high)
            quicksort(low, pi - 1)
            quicksort(pi + 1, high)

    quicksort(0, len(arr) - 1)
    end_time = time.time()
    return arr, end_time - start_time

def sort_numbers():
    numbers = simpledialog.askstring("Entrada", "Ingresa una lista de números separados por comas (máximo 40):")
    if not numbers:
        messagebox.showerror("Error", "Debes ingresar una lista de números.")
        return

    try:
        original_list = [int(num) for num in numbers.split(",")]
        if len(original_list) > 40:
            messagebox.showerror("Error", "La lista no puede tener más de 40 números.")
            return
    except ValueError:
        messagebox.showerror("Error", "Debes ingresar solo números separados por comas.")
        return

    method = simpledialog.askstring("Método de Ordenamiento", 
                                     "Selecciona el método de ordenamiento:\n1. Bubble Sort\n2. Insertion Sort\n3. Quick Sort")
    if method not in ("1", "2", "3"):
        messagebox.showerror("Error", "Selecciona un método válido (1, 2 o 3).")
        return

    sorted_list = original_list[:]
    if method == "1":
        sorted_list, time_taken = bubble_sort(sorted_list)
        method_name = "Bubble Sort"
    elif method == "2":
        sorted_list, time_taken = insertion_sort(sorted_list)
        method_name = "Insertion Sort"
    elif method == "3":
        sorted_list, time_taken = quick_sort(sorted_list)
        method_name = "Quick Sort"

    messagebox.showinfo("Resultados", 
                        f"Método: {method_name}\n\n"
                        f"Lista original: {original_list}\n"
                        f"Lista ordenada: {sorted_list}\n"
                        f"Tiempo tomado: {time_taken:.6f} segundos")

root = tk.Tk()
root.title("Ordenamiento de Números")
root.geometry("400x200")

label = tk.Label(root, text="Programa de Ordenamiento", font=("Arial", 16))
label.pack(pady=20)

sort_button = tk.Button(root, text="Ordenar Números", command=sort_numbers, font=("Arial", 14))
sort_button.pack(pady=20)

root.mainloop()
