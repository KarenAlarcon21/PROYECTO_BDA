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
    messageElement.textContent = message;
    chat.appendChild(messageElement);
    chat.scrollTop = chat.scrollHeight;
}

function getBotResponse(message) {
    let response = '';
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
            response = 'El uso de la página web implica seguir estos pasos:<br><br>' +
                    '1. El usuario debe ingresar su nombre de usuario y contraseña.<br><br>' +
                    '2. Tras el inicio de sesión, se accede a la página principal.<br><br>' +
                    '3. En la barra de navegación ubicada en la parte superior, se encuentran diversas opciones.<br><br>' +
                    '4. Seleccionar una opción conduce a la página correspondiente.<br><br>' +
                    '¿Tienes alguna otra pregunta?';
            break;


        case 'cómo cancelar una cita':
            response = 'Si deseas cancelar una cita, puedes hacerlo a través de la página web. Simplemente inicia sesión en tu cuenta, selecciona la cita que deseas cancelar y sigue las instrucciones para cancelarla. Si la cita ya ha pasado, el costo de la cancelación podría aplicarse.';
            break;

        case 'adios':
            chat.innerHTML = '';
            chatbot.classList.add('hidden');
            chatStarted = false;
            break;
        default:
            response = 'Lo siento, no entiendo lo que dices.';
    }

    setTimeout(function () {
        addMessageToChat(response, 'bot');
    }, 1000);
}