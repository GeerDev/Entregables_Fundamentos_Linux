# Entregables Fundamentos Linux

Cada ejercicio se encuentra resuelto en su respectiva carpeta.

### Cosas aprendidas y buscadas mientras se realizaban los ejercicios:

- **mkdir -p**: Crea toda la ruta completa y no da errores si la carpeta ya existe.
- **&&**: Solo ejecuta lo siguiente si lo primero tuvo éxito, cuidado con la comparación con |.
- **comillas simples**: Utilizando comillas simples se ha conseguido añadir carácteres especiales a un archivo como "!".
- **tree**: Sirve para ver el arbol de directorio, no viene instalado por defecto.
- **comentarios**: #.
- **permisos del script**: Cuidado si pones un interprete antes de un script siempre se priorizará este aunque la primera linea de tu script especifique el binario del interprete de consola, si das permiso de ejecución sobra con llamar la ruta donde este el script.
- **ejecutar desde la raiz**: Cuidado con rutas absolutas (siempre empiezan con /) y relativas, haz de vez en cuando un "pwd" para saber donde te encuentras.
- **modos del if**: Modo test [], [[]], (()), o sin nada.
- **bash --version**: Muestra la versión de bash instalada.
- **exit**: exit sin argumento devuelve el estado de la última orden, con "set -e" el script termina automaticamente cuando una orden devuelva un estado distinto a 0.
- **tipos de consolas interesantes**: zsh, fish, nushell y warp.
- **$**: "$0", "$?", "$#", "$@", "$*".
- **salida curl**: Importante podemos ver el código http que se nos devuelve y el exit status real del curl que no son lo mismo.
- **expresiones regulares**: Con [[]] y utilizando un "=~".
- **opciones de grep**: -i (Ignora mayus/minus), -n (Muestra número línea), -o (Muestra solo la parte coincidente), -c (Muestra solo el conteo de coincidencias), -A/-B (Muestra N lineas después/antes).
- **algún comando de vim**: /palabra para encontrar la palabra que buscas y "n" para la siguiente coincidencia.
- **wc**: -l para contar líneas, también puede contar palabras y bytes.
- **elif**: Creía que era un "elseif" o "else if" pero no, en consola se utiliza el elif.