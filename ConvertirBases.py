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
nsr_folder = os.path.join(bases_datos_folder, 'NSR')

# Recorrer las carpetas
for folder in [arr_folder, chf_folder, nsr_folder]:

    # Obtener los archivos de la carpeta
    files = os.listdir(folder)

    # Convertir los archivos a .mat
    for file in files:

        # Obtener el nombre del archivo
        name = file.split('.')[0]

        # Obtener la ruta del archivo .mat
        mat_path = os.path.join(os.getcwd(), name + 'm.mat')
        pathFinal = os.getcwd()
        # Crear el archivo .mat si no existe
        if not os.path.exists(mat_path):

            # Convertir el archivo a .mat
            wfdb_to_mat(os.path.join(folder, name))

print(f'{pathFinal}')

