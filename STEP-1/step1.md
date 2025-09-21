# DOCKER

-Para no tener que descargarnos todo el core de Odoo, desde su repositorio en nuestro ordenador. Vamos a crear 3 servicios distintos.

Primero de todo vamos a crear nuestro docker compose definiendo la imagen de Odoo, la imagen de la db(PostgreeSQL) y finalmente para facilidad de visualizacion de datos otro servicio de pgadmin.

-Para buenas practicas intentaremos subir nuestra imagen a Docker Hub

/home/josep/Imágenes/Capturas de pantalla/Captura desde 2025-09-21 20-24-37.png
---

## 🎯 Objetivo  

Simular la implantación de un ERP (Odoo) en una empresa del sector del mueble, reproduciendo el flujo completo de negocio:

Compras → El ERP detecta necesidades de materiales, genera órdenes de compra y actualiza el inventario al recibirlos.

Ventas → Se registran pedidos de clientes; si no hay stock suficiente, el ERP crea automáticamente órdenes de fabricación.

Órdenes de fabricación (MO) → Se producen muebles según su BOM, consumiendo materias primas y aumentando el stock de productos terminados.

Reabastecimiento (MRP) → El sistema analiza stock, pedidos y niveles mínimos para proponer compras o fabricación y evitar roturas de stock.

Entrega al cliente → Se despachan los productos, se genera la factura y el ERP actualiza contabilidad e inventario.

## Información.

Este repositorio es claramente para establecer una guia en un ejemplo real.

## Estructura del repositorio.

El repositorio estará basado en la división en carpetas de cada Flujo