<%-- 
    Document   : Historial_Citas
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
        <title>Historial de Citas</title>
        <link rel="icon" href="https://cdn-icons-png.flaticon.com/128/4366/4366934.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link href="css/estilo.css" rel="stylesheet" type="text/css">
        <link href="css/chatbot.css" rel="stylesheet" type="text/css">
        <link href="css/principal.css" rel="stylesheet" type="text/css">
    </head>
    <body style="margin: 0; padding: 0; background-color: #E5E5E5;"> 
        <header class="navbar navbar-expand-lg d-flex justify-content-between align-items-center">
            <h1 class="m-0">Historial Citas</h1>
            <div class="custom-form">
                <form action="Controlador" method="POST" class="d-flex">
                    <div class="form-group m-0 me-3">
                        <label class="label mb-0">
                            <input type="text" name="txt_PacienteID" class="form-control" placeholder=" ">
                            <span class="span">Buscar Paciente:</span>
                        </label>
                    </div>
                    <input type="hidden" name="menu" value="Historial_Citas">
                    <input type="hidden" name="accion" value="Filtrar">
                    <input type="submit" class="boton-redondo">
                </form>
            </div>
        </header>
        <hr style="color: green;"><br><br>
        <div>
            <table>
                <thead>
                    <tr style="color: red;">
                        <th>ID CITA</th>
                        <th>MÉDICO</th>
                        <th>LICENCIA MÉDICA</th>
                        <th>PACIENTE</th>
                        <th>IDENTIFICACIÓN</th>
                        <th>EDAD</th>
                        <th>PROGRAMA</th>
                        <th>FECHA CITA</th>
                        <th>ASISTENCIA</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                         List<Historial_Citas_ReporteDTO> citas = (List<Historial_Citas_ReporteDTO>) request.getAttribute("historial_citas");

                         if (citas != null) {

                             for (Historial_Citas_ReporteDTO historial : citas) {
                    %>
                    <tr>
                        <td><b><%= historial.getID() %></b></td>
                        <td><%= historial.getEncargado() %></td>
                        <td><%= historial.getLicencia_Medica() %></td>
                        <td><b><%= historial.getNombre() %></b></td>
                        <td><%= historial.getIdentificacion_p() %></td>
                        <td><%= historial.getEdad() %></td>
                        <td><%= historial.getPrograma() %></td>
                        <td><b><%= historial.getFecha() %></b></td>
                        <td>
                            <div class="form-group m-0 me-3">
                                <h5></h5>
                            </div>
                            <%
                                if (historial.getAsistencia().equals("1")) {
                            %>
                            <input type="label" value="Asistió" class="boton-redondo">
                            <%
                                } else {
                            %>
                            <input type="label" value="No Asistió" class="boton-redondo-x">
                            <%
                                }
                            %>
                        </td>
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



