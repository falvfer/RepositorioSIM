#!/bin/sh

#-----------------------------------------------------------------------------#
#       PRIMERA HORA DE CLASE                                                 #
#-----------------------------------------------------------------------------#
echo "Hay $(who | wc -l) usuarios activos"

cat /etc/group | grep alumno

# Da error y se informa como "warning" ya que alumno3 no tiene permisos de super usuario
su alumno3
sudo cat /etc/shadow

# Mostrar información de usuario
id alumno

# Cada usuario tiene nombre y contraseña, y su directorio está en /home/<usuario>
# Existe el administrador root desactivado

# Cada usuario tiene un UID, que es un número de 2 bytes identificativo
id root # Root tiene el UID 0

# UID 1-99 están reservados para el Sistema Operativo
id 1 # por ejemplo, el 1 es "daemon" (demonio), que crea procesos
# UID 1000-29999 son usuarios estandar
# UID 30000-limite están reservados pero se pueden usar

#-----------------------------------------------------------------------------#
#       SEGUNDA HORA DE CLASE                                                 #
#-----------------------------------------------------------------------------#
# En /etc/passwd se encuentra toda la información de los usuarios
cat /etc/passwd | grep alumno

# Para cambiar a "super usuario" o root
sudo su

# En /etc/shadow se encuentran las contraseñas encriptadas de todos los usuarios
sudo cat /etc/shadow | grep alumno

# En /etc/group se encuentran los grupos del dispositivo
cat /etc/group | grep alumno