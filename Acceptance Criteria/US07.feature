Feature: Envio de notificaciones correcto
        Como cliente
        quiero poder enviar notificaciones
        para mantenerme actualizado junto con los usuarios del círculo.

Scenario: Envío de notificaciones correcto
Given el cliente se encuentra en la interfaz principal
When el cliente selecciona la opción de <alerta>
Then puede seleccionar el <tipo de alerta rapida> 
como: "¡Ayuda!, Me encuentro bien, Llegué a casa". Si se realiza el envío correcto, 
aparecerá una <pantalla que indicara que fue enviado con exito> como: "Su notificación ha sido enviada con éxito".

Examples: Datos de entrada
    | Tipo de alerta  rápida|
    | Llegué a casa         |

Examples: Datos de salida
    | Pantalla de envío con éxito               |
    | Su notificación ha sido enviada con éxito |

Scenario: Envío de notificaciones incorrecto
Given el cliente se encuentra en la interfaz principal
When el cliente selecciona la opción de <alerta>
Then puede seleccionar el <tipo de alerta rapida> 
como: "¡Ayuda!, Me encuentro bien, Llegué a casa". Si se realiza el envío incorrecto, 
aparecerá una <pantalla con el mensaje> de: "Intentar enviar en unos minutos".

Examples: Datos de entrada
    | Tipo de alerta  rápida|
    | Llegué a casa         |

Examples: Datos de salida
    | Pantalla con mensaje               |
    | Intentar enviar en unos minutos    |
    