let userInput = document.getElementById('userInput');
let sendButton = document.getElementById('sendButton');
let chat = document.getElementById('chat');
let suggestionsDiv = document.getElementById('suggestions');
let chatStarted = false;
let chatbot = document.getElementById('chatbot');
let openChat = document.getElementById('openChat');
let closeChat = document.getElementById('closeChat');


openChat.addEventListener('click', function () {
    chatbot.classList.remove('hidden');
});

closeChat.addEventListener('click', function () {
    chatbot.classList.add('hidden');
});

sendButton.addEventListener('click', function () {
    let message = userInput.value;
    if (message !== '') {
        addMessageToChat(message, 'user');
        getBotResponse(message);
        userInput.value = '';
    }
});

function addMessageToChat(message, type) {
    let messageElement = document.createElement('p');
    messageElement.classList.add(type);
    messageElement.innerHTML = message;
    chat.appendChild(messageElement);
    chat.scrollTop = chat.scrollHeight;
}

function getBotResponse(message) {
    
    let response = '';
    let conversationState = '';
     let messageLowerCase = message.toLowerCase();
  
    switch (messageLowerCase) {

        case 'hola':
            if (!chatStarted) {
                chatStarted = true;
                response = '¡Bienvenido al Asistente Virtual de ServiSalud! ¿En qué puedo ayudarte?';
            } else {
                response = '¿Tienes alguna otra pregunta?';
            }
            break;

        case 'servisalud':
            response = 'Servicialud es una organización que brinda servicios de salud y atención a pacientes. ¿Cómo puedo ayudarte con ServiSalud?';
            break;

        case 'atención médica':
            response = 'Nuestros servicios de atención médica incluyen consultas con médicos, tratamientos, y medicamentos recetados. ¿Necesitas más información o ayuda para acceder a estos servicios?';
            break;

        case 'planes médicos':
            response = 'Tenemos diferentes planes médicos disponibles para adaptarnos a tus necesidades y presupuesto. Algunos de ellos son gratuitos, otros cuestan una tarifa mensual o anual. ¿Qué tipo de plan estás buscando?';
            break;

        case 'cómo usar la página web':
            response = 'El uso de la página web implica seguir estos pasos: <br><br>' +
                    '1. El usuario debe ingresar su nombre de usuario y contraseña. <br>' +
                    '2. Tras el inicio de sesión, se accede a la página principal. <br>' +
                    '3. En la barra de navegación ubicada en la parte superior, se encuentran diversas opciones. <br>' +
                    '4. Seleccionar una opción conduce a la página correspondiente. <br>' +
                    '¿Tienes alguna otra pregunta?';
                   
            break;

        case 'reportes':
            response = 'Los reportes que puedo generar son los siguientes: <br><br>' +
                    '1.Consolidado mensual de la cantidad de pacientes ingresados a medicina general, especialidad o urgencias.<br>' +
                    '2.Número de pacientes ingresados en una sede específica para cada modalidad de consulta expresado por mes. <br>' +
                    '3.Datos de los pacientes recibidos y sus diagnósticos. Estos datos organizados por sede y por modalidad de consulta para un mes particular. <br>' +
                    '4.Exámenes solicitados  para todos los pacientes de todas las modalidades de consulta organizado por sede para un mes particular. <br>' +
                    '5.Datos de todos los pacientes que no asistieron a citas programadas en un determinado mes. <br><br>';
        
            break;

        case 'cómo cancelar una cita':
            response = 'Si deseas cancelar una cita, puedes hacerlo a través de la página web. Simplemente inicia sesión en tu cuenta, selecciona la cita que deseas cancelar y sigue las instrucciones para cancelarla. Si la cita ya ha pasado, el costo de la cancelación podría aplicarse.';
            break;

          case '1':
                bandera=1;
                response='Por favor, proporciona numero el mes.';
            break;
            
            case '2':
                bandera = 2;
            response='2.Por favor,proporciona el nombre de la sede.';
                break;
                
            case '3':
                bandera = 3;
               response = '3.Por favor digita el numero del mes. <br>';
            break;
           
            case '4':
                bandera = 4;
                response= '4.proporciona el numero del mes. <br>';
                break;
                
            case '5':
                bandera = 5;
            response='5.proporciona el numero del mes.<br>';
                break;
                
        case 'adios':
            chat.innerHTML = '';
            chatbot.classList.add('hidden');
            chatStarted = false;
            break;
        default:
            response = 'Lo siento, no entiendo lo que dices.';
          break;
}
   

    setTimeout(function () {
        addMessageToChat(response, 'bot');
    }, 1000);
}