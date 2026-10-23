# Bitácora: alquilar de una bicicleta

## 1. Versión 1 

1. El cliente llega al local.
2. Pedir el documento.
3. Preguntar qué bicicleta quiere.
4. Consultar si en el inventario esta la bicicleta solicitada
5. Revisar la bicicleta.
6. Cobrar.
7. Entregar la bicicleta.
8. Fin

## 2. Prueba con un compañero

## 3. Versión 2 

**Entradas:** cliente, documento, inventario y tabla de tarifas.
**Salida:** el cliente sale con bicicleta, casco, o sale sin alquiler y queda anotado el motivo.

1. Saludar.
2. Pida el documento original. Si no lo tiene, decir "No se puede alquilar sin documento", salta al paso 12.
3. Anote nombre y número del documento.
4. Pregunte el tipo de bicicleta (urbana, montaña, eléctrica), el plan (1 hora, 4 horas, día completo), talla de casco (S, M o L).
5. Consulte el inventario. Si hay una bicicleta del tipo elegido, vaya al paso 7.
6. Si no hay, ofrezca otro tipo. Si elige otro, guardalo y siga al paso 7. Si no elige ninguno, decir "sin disponibilidad", salta al paso 12.
7. Revisar la bicicleta frente al cliente: frenos, llantas y cadena en su lugar. Si falla algo, decir "fuera de servicio", vuelva al paso 5.
8. Diga el valor según la tabla de tarifas y cóbrelo. Si no se completa, decir "pago no completado", salta al paso 12.
9. Entregue el casco con la talla.
10. Verifique: bicicleta, casco, y documento devuelto.
11. Decir "bicicleta alquilada", y diga "Disfrute su recorrido". saltar al paso 13.
12. Decir el motivo de no alquiler y diga "Gracias por visitarnos".
13. Fin.

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