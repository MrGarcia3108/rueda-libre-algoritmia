# Bitácora: alquilar de una bicicleta

## 1. Versión 1 

1. El cliente llega al local.
2. Pedir el documento.
3. si no lo tiene, ir al paso 11
4. Preguntar qué bicicleta quiere.
5. Consultar si en el inventario esta la bicicleta solicitada
6. si no hay en el inventario, ofrecerle otra al cliente
7. si el cliente no elige ninguna bicicleta, ir al paso 11
8. Revisar la bicicleta 
9. Cobrar.
10. Entregar la bicicleta.
11. decir el porque no se alquilo la bicicleta y despedir al cliente
12. Fin

## 2. Prueba con un compañero

### Errores:

1. No le ofresco el candado ni el casco al cleinte
2. En la revision de la bicicleta, el cliente no este presente
3. Que pasa si el cliente quiere reservar una bicicleta cuando este en el inventario
4. Saludar al cliente

## 3. Versión 2 

**Entradas:** cliente, documento, inventario y tabla de tarifas.
**Salida:** el cliente sale con bicicleta, casco, o sale sin alquiler y queda anotado el motivo.

1. un cliente llega
2. Saludar.
3. Pida el documento original. Si no lo tiene, decir "No se puede alquilar sin documento", salta al paso 12.
4. Si el cliente viene con una reserva, ir directo al paso 7
5. Anote nombre y número del documento.
6. Pregunte el tipo de bicicleta (urbana, montaña, eléctrica), el plan (1 hora, 4 horas, día completo), talla de casco (S, M o L).
7. Consulte el inventario. Si hay una bicicleta del tipo elegido, vaya al paso 7.
8. Si no hay, ofrezca otro tipo. Si elige otro, guardalo y siga al paso 7, Si hay ninguna bicicleta de la eleccion del cliente, ofrecer una reserva para cuando una bicicleta este en el inventario, e ir denuevo al paso 1 cuando vuelva, Si no elige ninguno, decir "sin disponibilidad", salta al paso 12.
9. Revisar la bicicleta frente al cliente: frenos, llantas y cadena en su lugar. Si falla algo, decir "fuera de servicio", vuelva al paso 5.
10. Diga el valor según la tabla de tarifas y cóbrelo. Si no se completa, decir "pago no completado", salta al paso 12.
11. Entregue el casco con la talla.
12. Verifique: bicicleta, casco y el candado, y documento devuelto.
13. Decir "bicicleta alquilada", y diga "Disfrute su recorrido". saltar al paso 13.
14. Decir el motivo de no alquiler y diga "Gracias por visitarnos".
15. Fin.

## 4. Características del algoritmo

- **Precisión:** el paso 2 exige documento original y el paso 7 revisa.
- **Finitud:** todos llegan al paso 13. El ciclo 7 a 5 quita una bicicleta del inventario.
- **Orden:** el documento siempre se pide en el paso 2, el paso 7 va antes del paso 8, el casco se entrega después.
- **Determinismo:** cada cadena de "si" tiene su "si no", siempre se recorren los pasos 1 a 11 y Fin.
- **Efectividad:** cada paso es ejecutable: mirar un documento, consultar el inventario, cobrar y anotar.

## 5. Pensamiento computacional

- **Descomposición:** identificar al cliente, elegir, disponibilidad, revisión, cobro y entrega.
- **Patrones:** con cada cliente se repite la secuencia; solo cambian los datos. Se repite comprobar, y si falla anotar el motivo y terminar.
- **Abstracción:** Color de la bicicleta, método de pago, la devolución.
- **Algoritmo final:** la versión 2.

## 6. Cotización en PSeInt

### Entrada, proceso y salida

| Descripción |
| **Entrada** | `nombreCliente`: nombre del cliente. `horas`: horas de alquiler. 
| **Proceso** | `total = horas * precioPorHora`, `precioPorHora` = 10000 . 
| **Salida** | Mensaje: "Bienvenido a rueda libre [nombre], tu alquiler de [horas] horas cuesta un total de: $[total]". 
### Casos de prueba

| # | Entrada (nombre, horas)              | Resultado esperado            | Resultado obtenido |
| 1 | Sebastian Garcia, 1                  | 1 × 10000                      = $10000            | |
| 2 | Pepito, 3                            | 3 × 10000                      = $30000            | |
| 3 | Antonio, 8                           | 8 × 10000                      = $80000            | |

### Horas en 0 o negativas

Si la persona de taquilla escribe 0 o número negativo, el calcula igual:

- `0`  horas, muestra un total de $0.
- `-2` horas, muestra un total negativo (-$20000).

## Cotización de recorrido

## Entrada, proceso y salida

porcentaje = 0.30
precioPorPersona = 60000

| **Entrada** | `nombreRecorrido`, `precioPorPersona`, `cantidadPersonas` 
| **Proceso** | `total = precioPorPersona * cantidadPersonas`; `anticipo = redon(total * porcentaje)`; `saldo = total - anticipo`
| **Salida** | RecorNombre del Recorrido, Valor total a pagar, Anticipo (30%), Saldo pendiente a pagar

## Prueba de escritorio
					
porcentaje = 0.30
precioPorPersona = 60000					
Leer nombreRecorrido:	Sabores de Barrio								
Leer cantidadPersonas:	4			
total = precioPorPersona * cantidadPersonas:	240000		
anticipo = redon(total * porcentaje):           72000	
saldo = total - anticipo:                  	    168000
Salida, nombreRecorrido: Sabores de Barrio, total: 240000 anticipo: 72000, saldo: 168000

## Ejecución en PSeInt

| Entrada                     | Obtenido                                   |
| Sabores de Barrio, 60000, 4 | Total 240000, anticipo 72000, saldo 168000 | 

## Diagrama de flujo

1. Inicio
2. Definir: nombreRecorrido, precioPorPersona, cantidadPersonas, porcentaje, total, anticipio, saldo
3. precioPorPersona = 0.30, precioPorPersona = 60000
4. Leer
5. Entradas nombreRecorrido, cantidadPersonas
6. leer
7. proceso: total = precioPorPersona*cantidadPersonas
8. proceso: anticipo = redon(total*porcentaje)
9. proceso: saldo = total-anticipo
10. Salida: nombreRecorrido, total, anticipo, saldo

# Bitácora: descomposición del problema

1	Valor del alquiler	bicicletas, horas, precio por bicicleta-hora
2	Valor del recorrido	personas, precio del recorrido por persona
3	Subtotal	alquiler + recorrido
4	Aporte voluntario	subtotal × 0,10
5	Total	subtotal + aporte
6	Valor exacto por persona	total / personas
7	Valor por persona redondeado a la centena	valor exacto