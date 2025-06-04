import os
import shutil
import tempfile
import wfdb

# Ruta de la carpeta temporal del sistema
temp_folder = tempfile.gettempdir()

# Ruta de la carpeta BasesDatos dentro de la carpeta temporal
bases_datos_folder = os.path.join(temp_folder, 'BasesDatos')

# Rutas de las subcarpetas
arr_folder = os.path.join(bases_datos_folder, 'ARR')
chf_folder = os.path.join(bases_datos_folder, 'CHF')
nsr_folder = os.path.join(bases_datos_folder, 'NSR')

# Comprobar si las bases de datos ya existen
for folder in [bases_datos_folder, arr_folder, chf_folder, nsr_folder]:
    if os.path.exists(folder):
        print(f'La carpeta {folder} ya existe. Se eliminará para descargarse nuevamente.')
        shutil.rmtree(folder)

# Crear las carpetas si no existen
for folder in [bases_datos_folder, arr_folder, chf_folder, nsr_folder]:
    if not os.path.exists(folder):
        os.makedirs(folder)

# Descargar la base de datos CHF
wfdb.dl_database('chfdb', chf_folder)

# Descargar la base de datos NSR
wfdb.dl_database('nsrdb', nsr_folder)

# Descargar la base de datos ARR
wfdb.dl_database('mitdb', arr_folder)
