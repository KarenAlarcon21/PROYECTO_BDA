<%-- 
    Document   : Historial_Citas
    Created on : 04/12/2023, 6:49:24 p. m.
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
        <title>Historial Citas</title>
        <link rel="icon" href="https://cdn-icons-png.flaticon.com/128/4366/4366934.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link href="css/estilo.css" rel="stylesheet" type="text/css">
        <link href="css/chatbot.css" rel="stylesheet" type="text/css">
        <link href="css/principal.css" rel="stylesheet" type="text/css">
    </head>
    <body style="margin: 0; padding: 0; background-color: #E5E5E5;"> 
        <h1>Historial de citas médicas</h1>
        <p>Su historial es el siguiente:</p>
        <div>
            <table>
                <tr>
                    <th>Encargado</th>
                    <th>Licencia Medica</th>
                    <th>Nombre</th>
                    <th>Identificación</th>
                    <th>Edad</th>
                    <th>Programa</th>
                    <th>Fecha Cita</th>
                    <th>Asistencia</th>
                    <th>Cancelar Cita</th>
                </tr>
                <tr>
                    <td>Encargado 1</td>
                    <td>Licencia 1</td>
                    <td>Nombre 1</td>
                    <td>ID 1</td>
                    <td>Edad 1</td>
                    <td>Programa 1</td>
                    <td>Fecha Cita 1</td>
                    <td><img src="chulo.png" alt="Asistió"></td>
                    <td><img src="x.png" alt="Cancelar"></td>
                </tr>
            </table>
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



