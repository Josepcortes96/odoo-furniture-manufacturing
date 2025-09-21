# Partimos de la imagen oficial de Odoo
FROM odoo:17

# Cambiamos a root para instalar dependencias adicionales
USER root

# Ejemplo: instalar librería de Python extra
RUN pip3 install xlrd

# Volvemos al usuario por defecto (buenas prácticas)
USER odoo

# Copiamos tus addons locales al directorio de Odoo
COPY ./addons /mnt/extra-addons
