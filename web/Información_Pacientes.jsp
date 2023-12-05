<%-- 
    Document   : Información_Pacientes
    Created on : 4/12/2023, 4:48:26 p. m.
    Author     : FAMILIA PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Información Pacientes</title>
        <link rel="icon" href="https://cdn-icons-png.flaticon.com/128/4366/4366934.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link href="css/estilo.css" rel="stylesheet" type="text/css">
        <link href="css/chatbot.css" rel="stylesheet" type="text/css">
        <link href="css/principal.css" rel="stylesheet" type="text/css">
        
    </head>
    <body style="margin: 0; padding: 0; background-color: white;">
        
        <div class="container-fluid p-4  text-black" style="background-color: #F0F0E7 ;">
        <h1>Información Paciente</h1>
        <hr style="color: green;">
        <form>
            <label for="identificador_p">Buscar paciente</label><br>
            <input type="text" id="identificador_p" name="identificador_p" style="background-color: #8cff1a;">
            <button id="buscar_paciente">
                <img src="https://static.vecteezy.com/system/resources/previews/007/749/074/original/bright-green-tick-checkmark-icon-free-vector.jpg"
                     alt="Buscar" width="25" height="25">
            </button>
        </form>
        </div>
        
          <div class="container mt-3">
            <table class="table table-bordered" style="border: 2px #79CD12;">
                <thead>
                    <tr style="color: red;">
                        <th>NOMBRE</th>
                        <th>IDENTIFICACIÓN</th>
                        <th>DIRECCIÓN</th>
                        <th>TELÉFONO</th>
                        <th>CORREO ELECTRÓNICO</th>
                        <th>CIUDAD AFILIACIÓN</th>
                        <th>PROGRAMA</th>
                    </tr>
                </thead>
                <tbody>
                    <%@page import="java.util.List"%>
                    <%@page import="Modelo.Informe_Paciente" %>
                    <%
                        List<Informe_Paciente> pacientes = (List<Informe_Paciente>) request.getAttribute("pacientes");
                        if(pacientes!=NULL){
                            for(Informe_Paciente ip: pacientes){
                    %>
                    <tr>
                        <td><%=ip.getNombre%></td>
                        <td><%=ip.getIdentificacion%></td>
                        <td><%=ip.getDireccion%></td>
                        <td><%=ip.getTelefono%></td>
                        <td<%=ip.getCorreo_electronico%></td>
                        <td><%=ip.getCiudad_afiliacion%></td>
                        <td><%=ip.getPrograma%></td>
                    </tr>
                    <%
                             }
                             }
                    %>
                </tbody>
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
