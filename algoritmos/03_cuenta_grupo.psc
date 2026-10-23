Algoritmo cuenta_grupo
    Definir bicis, horas, personas Como Entero
    Definir precioRecorrido, precioBiciHora Como Real
    Definir alquiler, recorrido, subtotal, aporte, total Como Real
    Definir exacto, porPersona Como Real
	
    precioBiciHora <- 10000  
	
    Escribir "Bicicletas urbanas:"
    Leer bicis
    Escribir "Horas de alquiler:"
    Leer horas
    Escribir "Precio del recorrido por persona:"
    Leer precioRecorrido
    Escribir "Personas del grupo:"
    Leer personas
	
    alquiler  <- bicis * horas * precioBiciHora
    recorrido <- personas * precioRecorrido
    subtotal  <- alquiler + recorrido
    aporte    <- subtotal * 0.10
    total     <- subtotal + aporte
	
    exacto <- total / personas
    porPersona <- trunc(exacto / 100) * 100
    Si porPersona < exacto Entonces
        porPersona <- porPersona + 100
    FinSi
	
    Escribir "===== RUEDA LIBRE - CUENTA ====="
    Escribir "Alquiler:             $", alquiler
    Escribir "Recorrido:            $", recorrido
    Escribir "Subtotal:             $", subtotal
    Escribir "Aporte voluntario 10%: $", aporte
    Escribir "TOTAL:                $", total
    Escribir "Por persona (a la centena): $", porPersona
FinAlgoritmo