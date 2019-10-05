# ExamenPractico
ExamenPractico
Este proyecto fue realizado con las siguientes tenologias:
.Backend: Asp .Net Core MVC 
.Front End: Jquery, Ajax,
.Base de Datos: MS-SQL
.Diseño: BootStrap, css

Descripcion General:

la primera parte del proceso es la creacion de los articulos, en este modo se procede a crear el articulos y sus diferentes caracteristicas, una vez completados todos los campos se procede a guardar dicha informacion, la parte de los articulos conta de una vista del listado de los articulos, con botones de ediccion y eliminacion del mismo.

 Registro Inicial de almacen 
 
 Este cuenta con diferentes vistas Listado de almacen, Creacion de Almacen, Ediccion y eliminacion del mismo
 en esto se procede a seleccionar el articulo, la ubicacion donde se va a guardar, la capacidad en esa ubicacion, las unidades en stock, etc.
 
 Registros de entradas y salidas de almacen
 
 En este proceso se verifican las entradas y salidas de los producto, Se elige el articulo, que accion se realizara entrada/salida,
 si es una entrada me presenta las todas las ubicaciones que hay en el almacen, pero previo a esto este registro debe de estar registrado en el almacen, para poder hacer las comparaciones con la capacidad y las unidades en stock.
 
 Las entradas me validad que la capacidad sea siempre mayor a la cantidad solicitada tanto de entrada como de salidas, en esa medida, va a ir aumentado o disminuyendo las unidades en stock.
 
 El proceso de las salidas se selecciona el articulo, el tipo de accion E/S, si es una salida me busca la ubicacion del producto que entro primero al almacen y a partir de ahi me registra la salidad disminuyendo las cantidade en stock.
 
 Inventario 
 
 El proceso de inventario consta de varias vista, Listado, Ediccion, Registro y eliminacion.
 en este proceso se ubica el producto que se va a inventariar, se colocan la cantidad de entrada y el sistema me calcula el precio * la cantidad digitada automaticamente, esto lo hace con todas las cantidades y finalmente se procede a registrar el inventario, este tambien se puede editar.
 
 en el caso de los reportes tuve ciertos inconvenierntes al integrar mi visual studio con la reporteria tanto de crystal como de Reporting Services y como tenia el tiempo encima, no me fue posible solucionarlo.
 



Consideraciones para iniciar el proyecto:
Segun lo requerido se creara una aplicación simulando el proceso de un almacen, por lo que se tomo en cuenta el manejo del mismo,
considerando que en un almacen se realizan tanto entradas con salidas de mercancias, asi como tambien control de inventario de esas mercacias.

por lo que procedi a una base de datos Local que contengan multiples tablas relacionadas entre si, para cumplir con lo requerido,
en varias de ellas estan, como campo principal el articulo que es el principal activo de este tipo de proceso, asi como los diferentes campos que participan en dicha estructura.

en el proceso de registro de almacen a nivel de sistema se deben tomar en cuenta, la cantidad del producto que entra y que sale asi como las unidades que estan en el stock.

Para poder observar dicha estructura le adjunto el script de la base de datos.
