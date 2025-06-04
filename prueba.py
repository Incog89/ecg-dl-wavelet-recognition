import os
import tempfile
import wfdb
from wfdb.io.convert.matlab import wfdb_to_mat

# Ruta de la carpeta temporal del sistema
temp_folder = tempfile.gettempdir()

# Ruta de la carpeta BasesDatos dentro de la carpeta temporal
bases_datos_folder = os.path.join(temp_folder, 'BasesDatos')

# Rutas de las subcarpetas
arr_folder = os.path.join(bases_datos_folder, 'ARR')
chf_folder = os.path.join(bases_datos_folder, 'CHF')
nsr_folder = os.path.join(bases_datos_folder, '')

# Recorrer las carpetas
for folder in [arr_folder, chf_folder, nsr_folder]:

    # Obtener los archivos de la carpeta
    files = os.listdir(folder)
    wfdb_to_mat("C:/Users/joyke/OneDrive/Escritorio/Programacion/NSR/16265")
    # Convertir los archivos a .mat
    for file in files:
        # Obtener el nombre del archivo
        name = file.split('.')[0]
        print(f'El archivo se llama {name} .')
        path = os.path.join(folder, name)
        print(f'su direccion es {path} .')

