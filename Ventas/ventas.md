# VENTAS.

## CLIENTES.

Una vez hemos configurado todo el ciclo de manufacturación. Procediremos a introducir un paso previo que es el de cuando se realiza una venta. En este paso para empezar instalaremos el modulo de ventas, si no lo hicimos anteriormente, y iremos a el concretamente. Ventas -> Pedidos -> Cliente.

Una vez estamos en el modulo le damos a nuevo y procedemos a crear el cliente.
-Añadimos la información del cliente y la dirección de facturación.

**Dirección de facturación**-> Dirección secundaria vinculada, es el lugar donde evia las facturas.
**Compañia** -> Entidad principal, contiene los datos generales y es donde se crean los pedidos de venta
![Captura paso 1](images/crear.png).

Después de crear varios clientes, vamos a verificar si se han creado bien en la lista. 

![Captura paso 1](images/Lista.png).

**El siguiente paso será revisar que los articulos tengan el check de venta, si no se podrán vender.** También verificamos que el tipo de producto sea almacenable y que el procedimiento de los modulos anteriores este bien. Ruta, metodo, el precio de venta y el coste.

## PEDIDO.

Una vez tenemos configurado la base,v amos a procoder a generar los pedidos.
Ventas -> Pedidos -> Pedido.
![Captura paso 1](images/Crear-pedido.png).

Para crear los usuarios nos dirijimos a menu Aplicaciones Ajustes, justamente en la parte izquierda donde podemos ver el cuadrado.

Una vez alli vamos a usuarios y compañias en el apartado de Usuarios. Nos vamos a encontrar con la lista de usuarios, por defecto, vamos a encontrar dos el nuestro y uno de prueba. Eliminamos ese usuario.

Cuando hayamos realizado este paso vamos a crear los usuarios. Arriba donde pone nuevo.

**IMPORTANTE**
En la parte inferior en administracion, se tiene que poner permisos de acceso para que el usuario este capado por roles.

**DIFERENCIACION**
Usuario --> Puede ver cosas del modulo validar algun apartado.
Administrador --> Es el encargado de todo el departamento y tiene todos los permisos en ese departamento.

![Captura paso 1](images/creacion-user.png).

Una vez hemos creado a todos los usuarios con todos los permisos, vamos a ver que estan en la lista. Y procederemos a darles contraseña a cada uno. 

![Captura paso 1](images/list-user.png).

![Captura paso 1](images/contra-user.png).

Una vez le damos contraseña al usuario. Vamos a testear que los permisos estan bien configurados.
-Cerramos nuestra sesion y intentamos acceder desde el que hemos asignado la contraseña.


![Captura paso 1](images/test-user.png).

Podemos ver en la siguiente imagen como el usuario Carla Vazquez cvazquez@mueblescortes.com. 

Quien tiene el rol de comercial, solamente puede ver la parte de ventas y de facturación. Tal y como se le ha asignado.

![Captura paso 1](images/cvazquez-user.png).
