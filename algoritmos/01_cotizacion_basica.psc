Algoritmo cotizacion_basica
	
    Definir nombreCliente Como Caracter
    Definir horas, precioPorHora, total Como Entero
	
    precioPorHora = 10000
	
    Escribir "Escribir el nombre del cliente:"
    Leer nombreCliente
    Escribir "Escribir las horas de alquiler:"
    Leer horas
	
    total = horas * precioPorHora
	
    Escribir "Bienvenido a rueda libre ", nombreCliente, ", tu alquiler de ", horas, " horas cuesta un total de: $", total
FinAlgoritmo
