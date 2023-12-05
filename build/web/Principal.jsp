<%-- 
    Document   : Principal
    Created on : 20/11/2023, 6:49:24 p. m.
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import = "Modelo.MedicoDTO" %>

<% HttpSession sesion = request.getSession();

MedicoDTO medico = (MedicoDTO) sesion.getAttribute("txtuser");

if(medico == null){

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
    <style>
        .btn-notborder {
            border: none;
            outline: none;
        }
    </style>
    <body style="margin: 0; padding: 0; background-color: #E5E5E5;"> 
        <header style="background: linear-gradient(to bottom, #79CD12, #5B9809); color: white;" class="navbar navbar-expand-lg d-flex">
            <img src="Imagenes/Logo.png" style="margin: 5px;" alt="Logo" width="50" height="50">
            <div class="container-fluid">                 
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <div>
                            <form target="myFrame" action="Inicio.jsp">
                                <input type="submit" value="Inicio" class="btn btn-outline-light btn-notborder">
                            </form>
                        </div>
                        <div>
                            <form target="myFrame" action="Controlador" method="POST">
                                <input type="hidden" name="menu" value="Historial_Citas">
                                <input type="hidden" name="accion" value="Listar">
                                <input type="submit" value="Historial Citas" class="btn btn-outline-light btn-notborder">
                            </form>
                        </div>
                        <div>
                            <form target="myFrame" action="Controlador" method="POST">
                                <input type="hidden" name="menu" value="Información_Pacientes">
                                <input type="hidden" name="accion" value="Listar">
                                <input type="submit" value="Información Pacientes" class="btn btn-outline-light btn-notborder">
                            </form>
                        </div>
                        <div>
                            <form target="myFrame" action="Controlador" method="POST">
                                <input type="hidden" name="menu" value="Remitir_Pacientes">
                                <input type="hidden" name="accion" value="Listar">
                                <input type="submit" value="Remitir Pacientes" class="btn btn-outline-light btn-notborder">
                            </form>
                        </div>
                        <div>
                            <form target="myFrame" action="Controlador" method="POST">
                                <input type="hidden" name="menu" value="Historia_Medica">
                                <input type="hidden" name="accion" value="Listar">
                                <input type="submit" value="Historia Médica" class="btn btn-outline-light btn-notborder">
                            </form>
                        </div>
                        <div>
                            <form target="myFrame" action="Reportes.jsp">
                                <input type="submit" value="Reportes" class="btn btn-outline-light btn-notborder">
                            </form>
                        </div>
                    </ul>
                    <div>
                        <form action="Controlador?menu=Principal_Menu" method="POST" style="display: inline;">                            
                            <input type="submit" name="accion" value="Cerrar Sesion" class="btn btn-outline-success btn-notborder">                                             
                        </form>
                    </div>  
                </div>
            </div>
        </header>
        <div class="m-4" style="height: 550px;">
            <iframe name="myFrame" style="height: 170%; width: 100%; border: none"></iframe>
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
        </div>        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    </body>
</html>

<%
    }else{

    request.getRequestDispatcher("index.jsp").forward(request, response);

    }

%>



