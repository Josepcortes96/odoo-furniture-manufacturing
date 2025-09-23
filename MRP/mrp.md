# MRP.

**MRP --> Es un sistema que calcula que materiales son necesarios en qué cantidades y en qué momentos para poder fabricar productos acabados**

## RUTAS.

Antes de adentrarnos de lleno en la manufacturación de productos, tenemos que definir la parte que conecta todos nuestros modulos. Las rutas.

**Una ruta es una regla logistica que define como se mueve un producto dentro de la empresa.**

Para activar las rutas tenemos que realizar el mismo procedimiento que con los almacenes. Hay que activar las rutas multietapas justamente al lado de almacenes.

![Captura paso 1](images/Conf-rutas.png).

Una vez activada la configuración, es muy importante analizar los almacenes de la empresa las rutas que hay, y hacer un esquema del proceso que seguira nuestro producto. 

Aqui dejo explicado y con un diagrama que he realizado para tener la mayor idea de la pipeline que seguira nuestro producto. 

![Captura paso 1](images/Flujo.png).

1. Materias Primas → Producción

    -Acción: Obtener desde (Pull).
    -Origen: WH03/Almacenamiento.
    -Destino: WH04/Entrada a Producción.
    📌 Permite que al lanzar una orden de producción, Odoo jale materiales desde el almacén de Materias Primas.

2. Producción (Entrada → WIP)

    -Acción: Obtener desde.
    -Origen: WH04/Entrada a Producción.
    -Destino: WH04/WIP.
    📌 Simula que las materias primas entran al proceso de fabricación (semielaborados).

3. Producción (WIP → Salida Producción)

    -Acción: Obtener desde.
    -Origen: WH04/WIP.
    -Destino: WH04/Salida de Producción.
    📌 Una vez terminadas, las piezas salen como producto acabado.

4. Producción → Productos Terminados

    -Acción: Obtener desde.
    -Origen: WH04/Salida de Producción.
    -Destino: WH02/Terminados.
    📌 Mueve los productos terminados al almacén de terminados listos para venta.

5. Terminados → Expediciones

    -Acción: Obtener desde.
    -Origen: WH02/Terminados.
    -Destino: WH01/Expediciones.
    📌 Mueve el producto ya vendido hacia la zona de expedición.


**CON ESTAS RUTAS YA TENDRIAMOS EL FLUJO COMPLETO Compra → Materias Primas → Producción → Terminados → Expediciones → Cliente **

![Captura paso 1](images/Creacion-ruta.png).

Preparamos nuestra ruta, es super importante la parte inferior de reglas añadir linea. Se nos abrirá un formulario, donde nosotros vamos a rellenar depende del tipo de operacion y la acción que queramos hacer. 

Como será un flujo la gran mayoria serán pulls Obtener desde. Excptuando el de devoluciones de clientes que será push al almacén de devoluciones.

![Captura paso 1](images/ruta-definida.png).


## .BoM

Antes de adentrarnos en las ordenes de fabricación y en las ordenes de trabajo, nos vamos a centrar en el BoM. El BoM es la descomposición de un producto.
Es decir, de los materiales que componen un producto. Menos la materia prima todos tendran un BoM. Por ejemplo, los semielaborados aunque no sean vendibles directamente. Estan compuestos por varios elementos de Materia prima.
En nuestro caso, hemos definido las piezas barnizadas, y su BoM es un tablero cortado y 1 litro de Barníz. El tablero cortado hemos definido que se hacer mediante 5m de madera de roble para conseguir 1 metro.


En Fabricación -> Productos -> Lista Materiales vamos a encontrar para hacer el BoM.

**Hay que tener presente que todo en una industria son flujos de procesos. De la materia prima, se preparar semielaborados, estos van a ser los que compongan los productos acabados listos para la venta**

![Captura paso 1](images/Creacion-bom.png).

Mientras asignamos el BoM, tambien vamos a preparar las "Operaciones" que son las accioens que se realizarán en los puestos de trabajo para elaborar el material. Cuando hemos definido los materiales y la cantidad en cada BoM. Vamos a proceder a las operaciones. 


![Captura paso 1](images/Operaciones.png).

Aqui en las operaciones vamos a definir la acción que se hace en cada lugar de trabajo y el tiempo estimado que se tarda en realizar la acción.

Posteriormente en los BoMs vamos a definir que tipo de operación tiene el BoM. Es importante, ya que nos sirve para indicar si estamos fabricando un semielaborado o un producto acabado.
En nuestra configuración del almacen, los semielaborados van en una ubicación y los productos acabados van en otra.

## .MO(ORDEN FABRICACIÓN) WO(ORDEN DE TRABAJO).

-Las siglas MO -> significa manufacturing order -> orden de fabricación y WO -> work order -> orden de trabajo.

-A continuación, vamos a proceder a crear las ordenes de fabricación. En las ordenes de fabricación, más adelante vamos a enlazar con los pedidos, marcan cuantas unidades se tienen de fabricar. Más bien dicho, se pasa el pedido a la fabrica para que lo fabriquen.

![Captura paso 1](images/MO.png).
![Captura paso 1](images/MO-1.png).
![Captura paso 1](images/MO-2.png).
![Captura paso 1](images/ot-activate.png).
![Captura paso 1](images/oT-OK.png).




