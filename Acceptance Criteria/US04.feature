Feature: Registrar ubicacion actual y ubicaciones frecuentes
        Como cliente 
        quiero registrar mi ubicacion actual y ubicaciones frecuentes
        para empezar con el monitoreo.

Scenario: Registro exitoso
Given el cliente se encuentra en la interfaz principal
When el cliente selecciona el <icono> de "+" y añade su ubicación actual o las horas que quiere hasta el límite según su plan
Then si el registro fue correcto, cumpliendo con todos los campos solicitados:
<distrito>, <nombre de ubicacion>, <frecuencia de visita> y localizando las ubicaciones correctamente
(registrándolas mediante el GPS), aparece el <mensaje de registro exitoso> como: "Su ubicación ha sido registrada correctamente".

Examples: Datos de entrada
    | distrito | nombre de la ubicacion | frecuencia de visita |
    | San Miguel  | Jr las gaviotas  | 3 veces por semana  |

Examples: Datos de salida
    | Mensaje de registro exitoso               |
    | Su ubicacion ha sido añadida correctamente|

Scenario: Registro no exitoso
Given el cliente se encuentra en la interfaz principal
When el cliente selecciona el <icono> de "+" y añade su ubicación actual o las horas que quiere hasta el límite según su plan
Then si el registro fue incorrecto, sin cumplir con todos los campos solicitados:
<distrito>, <nombre de ubicacion>, <frecuencia de visita> y sin localizar las ubicaciones correctamente 
(registrándolas mediante el GPS), se muestra el <mensaje de registro no exitoso> como: "No se pudo registrar la ubicación señalada".

Examples: Datos de entrada
    | distrito | nombre de la ubicacion | frecuencia de visita |
    | San Miguel  |   | 3 veces por semana  |

Examples: Datos de salida
    | Mensaje de registro exitoso               |
    | No se pudo registrar la ubicacion señalada|
