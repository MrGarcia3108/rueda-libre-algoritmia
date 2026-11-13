Algoritmo cotizacion_recorrido
	Definir nombreRecorrido Como Cadena
	Definir precioPorPersona, cantidadPersonas Como Entero
	Definir porcentaje Como Real
	Definir total, anticipio, saldo Como Entero
	
	porcentaje <- 0.30
	precioPorPersona <- 60000
	
	Escribir 'Nombre del Recorrido'
	Leer nombreRecorrido
	Escribir 'Cantidad de personas:'
	Leer cantidadPersonas
	
	total = precioPorPersona*cantidadPersonas
	anticipo = redon(total*porcentaje)
	saldo = total-anticipo
	
	Escribir 'Nombre del Recorrido: ', nombreRecorrido
	Escribir 'Valor total a pagar: $', total
	Escribir 'Anticipo (30%): $', anticipo
	Escribir 'Saldo pendiente a pagar: $', saldo
FinAlgoritmo
