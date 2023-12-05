<%-- 
    Document   : Información_Pacientes
    Created on : 4/12/2023, 4:48:26 p. m.
    Author     : FAMILIA PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Modelo.*" %>

<%@page import = "Modelo.MedicoDTO" %>

<% HttpSession sesion = request.getSession();

MedicoDTO medico = (MedicoDTO) sesion.getAttribute("txtuser");

if(medico == null){

%>

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
    <body style="margin: 0; padding: 0; background-color: #E5E5E5;"> 
        <header class="navbar navbar-expand-lg d-flex justify-content-between align-items-center">
            <h1 class="m-0">Información Pacientes</h1>
            <div class="d-flex align-items-center">
                <div class="form-group m-0 me-3">
                    <label class="label mb-0">
                        <input type="text" name="txt_PacienteID" class="form-control" placeholder=" ">
                        <span class="span">Buscar Paciente:</span>
                    </label>
                </div>
                <input type="submit" value="PacienteID" class="boton-redondo">
            </div>
        </header>
        <hr style="color: green;"><br><br>
        <div>
            <table>
                <thead>
                    <tr>
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
                    <%
                        List<Informe_PacienteDTO> pacientes = (List<Informe_PacienteDTO>) request.getAttribute("pacientes");
                        
                        if (pacientes != null) {
                        
                            for (Informe_PacienteDTO ip : pacientes) {
                            
                    %>
                    <tr>
                        <td><%= ip.getNombre() %></td>
                        <td><%= ip.getIdentificacion() %></td>
                        <td><%= ip.getDireccion() %></td>
                        <td><%= ip.getTelefono() %></td>
                        <td><%= ip.getCorreo_electronico() %></td>
                        <td><%= ip.getCiudad_afiliacion() %></td>
                        <td><%= ip.getPrograma() %></td>
                    </tr>
                    <%
                            }
                        }
                    %>
                </tbody>
            </table>
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