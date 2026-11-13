Algoritmo cuenta_grupo
	
    Definir bicicletas, horas, precioRecorrido, personas, precioPorHora Como Entero
    Definir porcentajeAporte Como Real
    Definir centena, valorAlquiler, valorRecorrido, subtotal, aporte, total, valorPorPersona Como Entero
	
    precioPorHora = 10000
    porcentajeAporte = 0.10
    centena = 100
	
    Escribir "Cantidad de bicicletas urbanas:"
    Leer bicicletas
    Escribir "Horas de alquiler:"
    Leer horas
    Escribir "Precio del recorrido por persona:"
    Leer precioRecorrido
    Escribir "Cantidad de personas del grupo:"
    Leer personas
	
    valorAlquiler = bicicletas * horas * precioPorHora
    valorRecorrido = precioRecorrido * personas
    subtotal = valorAlquiler + valorRecorrido
    aporte = redon(subtotal * porcentajeAporte)
    total = subtotal + aporte
    valorPorPersona = trunc((total + centena * personas - 1) / (centena * personas)) * centena
	
    Escribir "Alquiler:              $", valorAlquiler
    Escribir "Recorrido:             $", valorRecorrido
    Escribir "Subtotal:              $", subtotal
    Escribir "Aporte voluntario 10%: $", aporte
    Escribir "TOTAL:                 $", total
    Escribir "Cada persona paga:     $", valorPorPersona
FinAlgoritmo