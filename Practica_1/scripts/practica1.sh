# 1. Mensaje de inicio
echo "Bienvenido. Iniciando script de automatización para la Práctica 1"

# 2. Carpeta de usuario
cd $HOME

# 3 y 4. Verificar si existe la carpeta Practica1; si no existe, se crea
if [ ! -d "Practica1" ]; then
    echo "La carpeta Practica1 no existe. Creándola..."
    mkdir Practica1
else
    echo "La carpeta Practica1 ya existe."
fi

# 5. Dentro de Practica1, se crea la carpeta Letras con sus respectivos archivos
mkdir -p Practica1/Letras
touch Practica1/Letras/a.txt Practica1/Letras/b.txt Practica1/Letras/c.txt

# 6. Dentro de Practica1, se crea la carpeta Integrantes con los nombres del equipo
mkdir -p Practica1/Integrantes
touch Practica1/Integrantes/ChavezSanabriaJoseAdrian.txt
touch Practica1/Integrantes/HernandezGarciaAlejandro.txt
touch Practica1/Integrantes/MartinezPerezJoseAntonio.txt

# 7. Diagrama de la estructura de Practica1
echo "Estructura de la carpeta Practica1:"
if command -v tree &> /dev/null; then
    tree Practica1
else
    echo "El comando 'tree' no está instalado. Utilizando 'ls -R' como alternativa:"
    ls -R Practica1
fi

# 8. Eliminar la carpeta Practica1, incluyendo subcarpetas y archivos
echo "Eliminando la carpeta Practica1 y su contenido..."

# Se comprueba la ruta exacta antes de eliminar
if [ -d "$HOME/Practica1" ]; then
    rm -rf "$HOME/Practica1"
    echo "Carpeta Practica1 eliminada exitosamente."
else
    echo "Error: No se encontró la ruta $HOME/Practica1 para eliminar."
fi