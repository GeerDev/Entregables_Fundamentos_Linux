# Ejercicio 3

### Crear un script de bash que agrupe los pasos de los ejercicios anteriores y además permita establecer el texto de file1.txt alimentándose como parámetro al invocarlo

Si se le pasa un texto vacío al invocar el script, el texto de los ficheros, el texto por defecto será:

```bash
Que me gusta la bash!!!!
```

### Solución

```bash
# Creamos el script con el nombre más original del mundo y siguiendo un total de 0 buenas prácticas "script1.sh"
touch script1.sh

# Comprobamos que permisos tiene
ls -al script1.sh

# Le añadimos para todas las opciones de permisos el permiso de ejecución
chmod +x script1.sh

# Comprobamos los permidos nuevamente
ls -al script1.sh

# Borramos la carpeta de "foo" solo con fines de comprobar que el sript va a funcionar bien
rm -rf foo/

# Lógica de "script1.sh"
vim script1.sh
########################################################
#!/bin/bash

if [ -z "$1" ]; then
  echo "Error: Que me gusta la bash!!!!"
  exit 1
fi

mkdir -p foo/{dummy,empty}
touch foo/dummy/{file1.txt,file2.txt}
echo "$1" > foo/dummy/file1.txt

cat foo/dummy/file1.txt > foo/dummy/file2.txt
cd foo/dummy/
mv file2.txt ../empty/
########################################################

# Ejecutamos el script con y sin parámetro
./script1.sh 'Este es el contenido introducido' # Funcionamiento correcto ✅
./script1.sh # Nos tira el mensaje de error de "Que me gusta la bash!!!!" ❌
```

Se ha comprobado que la estructura de carpetas es la correcta, así como el contenido de cada fichero, además también se ha comprobado que al no introducir parámetro cuando se ejecuta el script salta el mensaje de error correspondiente.