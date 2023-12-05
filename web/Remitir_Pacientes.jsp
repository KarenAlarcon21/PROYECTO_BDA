<%-- 
    Document   : Remitir_Pacientes
    Created on : 04/12/2023, 6:49:24 p. m.
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "Modelo.*" %>
<%@ page import="java.util.List" %>

<% HttpSession sesion = request.getSession();

MedicoDTO medico = (MedicoDTO) sesion.getAttribute("txtuser");

if(medico == null){

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
    </head>
    <style>
        .custom-form form {
            display: flex;
            align-items: center;
        }
        .centered {
            text-align: center;
        }

    </style>
    <body style="margin: 0; padding: 0; background-color: #E5E5E5;"> 
        <header class="navbar navbar-expand-lg d-flex justify-content-between align-items-center">
            <h1 class="m-0">Remitir Pacientes</h1>
            <div class="custom-form">
                <form action="Controlador" method="POST" class="d-flex">
                    <div class="form-group m-0 me-3">
                        <label class="label mb-0">
                            <input type="text" name="txt_PacienteID" class="form-control" placeholder=" ">
                            <span class="span">Buscar Paciente:</span>
                        </label>
                    </div>
                    <input type="hidden" name="menu" value="Remitir_Pacientes">
                    <input type="hidden" name="accion" value="Filtrar">
                    <input type="submit" class="boton-redondo">
                </form>
            </div>
        </header>
        <hr style="color: green;"><br><br>
        <div>
            <table>
                <thead>
                    <tr>
                        <th>NOMBRE</th>
                        <th>IDENTIFICACIÓN</th>
                        <th>EDAD</th>
                        <th>CIUDAD</th>
                        <th>SEDE</th>
                        <th>FECHA DE CITA</th>
                        <th>DIAGNÓSTICO</th>
                    </tr> 
                </thead>
                <tbody>
                    <%
                            List<HistorialDTO> citas = (List<HistorialDTO>) request.getAttribute("cita");
    
                            if (citas != null) {
                    
                                for (HistorialDTO historial : citas) {
                    %>
                    <tr>
                        <td><b><%= historial.getNombre() + " " + historial.getApellido() %></b></td>
                        <td><%= historial.getIdentificacion() %></td>
                        <td><%= historial.getEdad() %></td>
                        <td><%= historial.getCiudad() %></td>
                        <td><%= historial.getSede() %></td>
                        <td><b><%= historial.getFecha() %></b></td>
                        <td><%= historial.getDiagnostico() %></td>
                    </tr>
                    <%
                            }
                        }
                    %>
                </tbody>
            </table>
        </div><br>
        <hr style="color: green;"><br><br>
        <h1 class="centered">Remitir</h1><br>
        <div>
            <form action="Controlador" method="POST">
                <label class="label">
                    <input type="text" name="txtID" class="form-control" placeholder="">
                    <span class="span">Identificación Paciente:</span>
                </label>
                <label class="label">
                    <input type="text" name="txtEspecialista" class="form-control" placeholder="">
                    <span class="span">Licencia Especialista:</span>
                </label>
                <label class="label">
                    <input type="text" name="txtNombreE" class="form-control" placeholder="">
                    <span class="span">Nombre Encargado:</span>
                </label>
                <label class="label">
                    <input type="text" name="txtCiudad" class="form-control" placeholder="">
                    <span class="span">Ciudad:</span>
                </label>
                <label class="label">
                    <input type="text" name="txtSede" class="form-control" placeholder="">
                    <span class="span">Sede:</span>
                </label>
                <label class="label">
                    <input type="datetime-local" name="calendario" class="form-control" placeholder="">
                </label>
                <div class="d-flex justify-content-end align-items-center">
                    <div class="form-group m-0 me-3">
                        <h5>Remitir Paciente</h5> 
                    </div>
                    <input type="hidden" name="menu" value="Remitir_Pacientes">
                    <input type="hidden" name="accion" value="Remitir">
                    <input type="submit" class="boton-redondo">
                </div>
            </form>
        </div><br>
    </form>
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



