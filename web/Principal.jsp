<%-- 
    Document   : Principal
    Created on : 20/11/2023, 6:49:24 p. m.
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import = "Modelo.MedicoDTO" %>

<% HttpSession sesion = request.getSession();

//MedicoDTO medico = (MedicoDTO) sesion.getAttribute("txtuser");

//if(medico == null){

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ServiSalud EPS</title>
        <link rel="icon" href="https://cdn-icons-png.flaticon.com/128/4366/4366934.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link href="css/estilo.css" rel="stylesheet" type="text/css">
        <link href="css/chatbot.css" rel="stylesheet" type="text/css">
        <link href="css/principal.css" rel="stylesheet" type="text/css">
    </head>
    <body style="margin: 0; padding: 0; background-color: #E5E5E5;"> 
        <header style="background: linear-gradient(to bottom, #79CD12, #5B9809); color: white;" class="navbar navbar-expand-lg d-flex">
            <img src="Imagenes/Logo.png" style="margin: 5px;" alt="Logo" width="50" height="50">
            <div class="container-fluid">                 
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a style="border: none;" class="btn btn-outline-light" aria-current="page" href="Controlador?menu=Principal&accion=Inicio"><b>Inicio</b></a>
                        </li>
                        <li class="nav-item">
                            <a style="border: none;" class="btn btn-outline-light" aria-current="page" href="Controlador?menu=Citas_Agendadas&accion=Listar" target="myFrame"><b>Citas Agendadas</b></a>
                        </li>
                        <li class="nav-item">
                            <a style="border: none;" class="btn btn-outline-light" aria-current="page" href="Controlador?menu=Historial_Citas&accion=Listar" target="myFrame"><b>Historial de Citas</b></a>
                        </li>
                        <li class="nav-item">
                            <a style="border: none;" class="btn btn-outline-light" aria-current="page" href="Controlador?menu=Informacion_Pacientes&accion=Listar" target="myFrame"><b>Información Pacientes</b></a>
                        </li>
                        <li class="nav-item">
                            <a style="border: none;" class="btn btn-outline-light" aria-current="page" href="Controlador?menu=Remitir_Paciente&accion=default" target="myFrame"><b>Remitir Paciente</b></a>
                        </li>
                    </ul>
                    <form action="Controlador" method="POST" style="display: inline;">
                        <input type="hidden" name="menu" value="Principal_Menu">
                        <input type="hidden" name="accion" value="Cerrar_Sesion">
                        <button type="submit" style="border: none;" class="btn btn-outline-success" aria-current="page"><b>Cerrar Sesion</b></button>
                    </form>
                </div>
            </div>
        </header>        
        <div>
            <div class="box">                
                <h2>Bienvenido/a a ServiSalud EPS</h2>
                <div style="display: flex;">
                    <p>Somos una institución comprometida con tu bienestar y salud. En ServiSalud, nos esforzamos por brindarte acceso a servicios médicos de calidad y a profesionales de la salud altamente capacitados.
                        Nuestra prioridad es tu cuidado y atención médica integral. Ofrecemos una amplia gama de servicios que abarcan desde consultas médicas generales hasta tratamientos especializados y hospitalización, todo diseñado para satisfacer tus necesidades médicas específicas.
                        En ServiSalud, valoramos la importancia de la prevención y promoción de la salud. Por eso, además de nuestros servicios médicos, también proporcionamos programas de prevención, asesoramiento y educación para que puedas mantener un estilo de vida saludable.</p>
                    <img src="https://cdnwordpresstest-f0ekdgevcngegudb.z01.azurefd.net/es/wp-content/uploads/2023/10/Trasplante-de-Corazon-1.jpg" alt="Imagen_1" width="500" height="300">
                </div>
            </div>
            <div class="box"> 
                <h3>Servicios</h3><br>
                <div class="galeria-fotos">
                    <img src="https://img.freepik.com/vector-premium/servicios-medicos-medicos-pacientes-hospitales_40816-496.jpg" alt="Imagen 1" width="500" height="300">
                    <img src="https://img.freepik.com/vector-premium/buen-hospital-tendra-sistema-servicios-procedimiento-claro-estandares-salud-publica_1150-50288.jpg" alt="Imagen 2" width="500" height="300">
                    <img src="https://hospitecnia.com/sites/default/files/styles/node_teaser/public/2023-03/cabecera-unidad-quemados.jpg?itok=8iQ7zZCH" alt="Imagen 3" width="500" height="300">            
                </div>
            </div>
            <div class="box">
                <h2>Especialidades</h2>
                <div style="display: flex;">
                    <div>
                        <p>En nuestra red hospitalaria, nos enorgullecemos de contar con un abanico completo de especialidades médicas. Nuestro compromiso es proporcionar atención integral y especializada a nuestros pacientes. Entre las especialidades médicas disponibles se incluyen muchas áreas de atención médica especializada. Estamos dedicados a brindar un cuidado médico de la más alta calidad en cada una de nuestras especialidades para garantizar el bienestar y la salud de nuestra comunidad.
                            <br>Entre las especialidades médicas disponibles se incluyen:</p>
                        <ul>
                            <li>Medicina Interna</li>
                            <li>Cardiología</li>
                            <li>Pediatría</li>
                            <li>Ginecología y Obstetricia</li>
                            <li>Traumatología</li>
                            <li>Oncología</li>
                            <li>Neurología</li>
                            <li>Endocrinología</li>
                        </ul>
                    </div>
                    <img src="https://www.operarme.es/storage/media/noticias/imagenes-medicas/recuperacion-paciente.jpg" alt="Imagen_3" width="500" height="300">
                </div>
            </div>
        </div><br>
        <div class="box"> 
            <h3>Su Bienestar es nuestra prioridad</h3><br>
            <div class="galeria-fotos">
                <img src="https://bogota.gov.co/sites/default/files/styles/1050px/public/field/image/Hospital%20Universitario%20Nacional%20de%20Colombia.jpg" alt="Imagen 1" width="500" height="300">
                <img src="https://bogota.gov.co/sites/default/files/styles/1050px/public/2020-04/hospitales-plan-de-desarrollo.jpg" alt="Imagen 2" width="500" height="300">
                <img src="https://www.hospitalsanpedro.org/wp-content/uploads/2023/06/1er_trasplante.jpg" alt="Imagen 3" width="500" height="300">            
            </div>
        </div>
        <button id="openChat"><img src="https://cdn-icons-png.flaticon.com/128/4712/4712076.png" alt="Asistente" title="Asistente Virtual"><i class="fas fa-robot"></i></button>
        <div id="chatbot" class="hidden px-4 py-3">
            <h4>Asistente Virtual</h4>
            <div id="chat"></div>
            <label class="label">
                <input id="userInput" type="text" class="form-control" 
                       placeholder=" ">
                <span class="span">Escribe un mensaje...</span>
            </label>
            <div id="suggestions"></div>
            <button class="btn btn-success" id="sendButton">Enviar</button>
            <button id="closeChat">X</button>
        </div>
        <script src="js/chatbot.js"></script><br>
        <footer class="social-links">
            <p>&copy; 2023 EPS ServiSalud. Todos los derechos reservados.</p>
            <p>
                <img src="https://cdn-icons-png.flaticon.com/128/5968/5968764.png" alt="Facebook" width="50" height="50" onclick="window.open('https://www.facebook.com', '_blank')">
                <img src="https://cdn-icons-png.flaticon.com/128/733/733579.png" alt="Twitter" width="50" height="50" onclick="window.open('https://www.twitter.com', '_blank')"> 
                <img src="https://cdn-icons-png.flaticon.com/128/1384/1384060.png" alt="YouTube" width="50" height="50" onclick="window.open('https://www.youtube.com', '_blank')"> 
                <img src="https://cdn-icons-png.flaticon.com/128/174/174855.png" alt="Instagram" width="50" height="50" onclick="window.open('https://www.instagram.com', '_blank')">
            </p>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    </body>
</html>

<%
    //}else{

    //request.getRequestDispatcher("index.jsp").forward(request, response);

    //}

%>



