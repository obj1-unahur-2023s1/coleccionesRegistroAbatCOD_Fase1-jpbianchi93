# Registro de abatidos por día en el Call of Duty
![Portada](portadaCOD.png)

Se nos pide modelar un servicio en el famoso videojuego Call of Duty que permita el registro de la cantidad de abatidos por día de un jugador, sin importar la cantidad de partidas jugadas en ese día. 

Primero vamos a tener que definir algunos métodos que nos permitan agregar y eliminar elementos al registro de abatidos, y para esta simulación, utilizaremos una lista de enteros que representarán esas cantidades en un lapso de días entre 0 y "n" días, siendo 0 el primer día del que se tiene registro y "n" el último de esos días. 

Entonces, el registro debe poder manejar los siguientes métodos:
- `agregarAbatidosDia(cantidad)`: agrega la cantidad de abatidos en un día.
- `agregarAbatidosVariosDias([cant1,cant2,...])`: agrega la lista de cantidades de abatidos en varios días, ordenada desde el más antiguo.
- `eliminarlaCantidadDeAbatidos(cantidad)`: elimina la cantidad de abatidos en un día. ¿que pasa si varios días abatió la misma cantidad?.
- `eliminarLasCantidadesDeAbatidos([cant1,cant2,...])`: elimina las cantidades de abatidos en varios días. Y nos preguntamos ¿que pasa si varios días abatió la misma cantidad?.
<br>

El registro debe ser capaz de responder las siguientes consultas:
- `cantidadDeDiasRegistrados()`: indica la cantidad de días de los que se tiene registro, es decir, el tamaño de la lista.
- `estaVacioElRegistro()`: indica si el registro está vacío o no.
- `algunDiaSeAbatio(cantidad)`: indica si el registro incluye al menos un día en el que se abatió, exactamente, la cantidad indicada.
- `primerValorDeAbatidos()`: indica la cantidad del primer registro.
- `ultimoValorDeAbatidos()`: el último valor registrado.  
- `maximoValorDeAbatidos()`: el valor más alto de abatidos diaria incluido en el registro.
- `totalAbatidos()`: el total de abatidos por el jugador, de acuerdo a la información incluida en el registro.
- `cantidadDeAbatidosElDiaNro(nroDia)`: la cantidad de abatidos por el jugador el número de día, que es un índice (recordemos que el día 1 es indice 0, día 2 incice 1...).
- `ultimoValorDeAbatidosConSize()`: Demostrar que last() == size()-1.
- `abatidosSuperioresA(cuanto)`: los valores de abatidos que superan el valor indicado, en el mismo orden en que aparecen en el registro.
- `valoresDeAbatidosPares()`: los valores pares incluidos, en el mismo orden en que aparecen en el registro.
- `elValorDeAbatidos(cantidad)`: encuentra y retorna el valor indicado en cantidad.
- `abatidosSumando(cantidad)`: la serie que resulta de sumar el valor indicado a cada valor de abatidos diaria incluido en el registro. 
- `abatidosEsAcotada(n1,n2)`: indica si en cada día de que se tiene registro, la cantidad de abatidos se encuentra entre los valores indicados.
- `algunDiaAbatioMasDe(cantidad)`: indica si algún día de que se tiene registro, la cantidad de abatidos es mayor al valor indicado.
- `todosLosDiasAbatioMasDe(cantidad)`: indica si todos los días de que se tiene registro, la cantidad de abatidos es mayor al valor indicado.
- `cantidadAbatidosMayorALaPrimera()`: la cantidad de valores de abatidos diaria que superan a la cantidad indicada para el primer día del registro.

A modo de ejemplo, se indica qué debe responder el registro de abatidos a varios mensajes, si incluye el juego de seis días con valores 43,18,49,62,33,39.
 
| mensaje | resultado esperado | 
| --- | --- |
| `registroAbatidos.algunDiaAbatio(49)` | `true` |
| `registroAbatidos.algunDiaAbatio(52)` | `false` |
| `registroAbatidos.maximoValorDeAbatidos()` | `62` |
| `registroAbatidos.valoresDeAbatidosPares()` | `18,62` |
| `registroAbatidos.abatidosEsAcotada(10,100)` | `true` |
| `registroAbatidos.abatidosEsAcotada(20,100)` | `false` (porque 18 no está en el rango) |
| `registroAbatidos.abatidosSuperioresA(35)` | `43,49,62,39` |
| `registroAbatidos.abatidosSumando(5)` | `48,23,54,67,38,44` |
| `registroAbatidos.totalAbatidos()` | `244` |
| `registroAbatidos.ultimoValorDeAbatidos()` | `39` |
| `registroAbatidos.cantidadAbatidosMayorALaPrimera()` | `2` (los valores 49 y 62) |
| `registroAbatidos.algunDiaAbatioMasDe(50)` | `true` |
| `registroAbatidos.todosLosDiasAbatioMasDe(30)` | `false` |

