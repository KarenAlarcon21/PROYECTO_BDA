<%-- 
    Document   : Reportes
    Created on : 5/12/2023, 12:32:22 a. m.
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
        <title>Reportes</title>
        <link rel="icon" href="https://cdn-icons-png.flaticon.com/128/4366/4366934.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link href="css/estilo.css" rel="stylesheet" type="text/css">
        <link href="css/principal.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>Reportes</h1><br>         
        <hr style="color: green;"><br>
        <form action="Controlador" method="POST">
            <table>
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">REPORTE</th>
                        <th class="text-center" scope="col">DESCRIPCIÓN</th>
                        <th scope="col">SALIDA</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>
                            <button type="submit" class="btn btn-primary" name="accion" value="reporte1" onclick="mostrarReporte('Se ha decargado el reporte mira la carpeta de descargas (Reporte1)')">GENERAR</button>
                        </td>
                <input type="hidden" name="menu" value="Reportes">
                <td class="text-center"> Consolidado mensual de la cantidad de pacientes<br> ingresados a medicina general, especialidad o urgencias.</td>
                <td>
                    <div class="form-group m-0 me-3">
                        <label class="label mb-0">
                            <input type="text" id="mes1" name="mes1" class="form-control" placeholder=" ">
                            <span class="span" for="reporte1">Número mes:</span>
                        </label>
                    </div>
                </td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td><button type="submit" name="accion" value="reporte2" class="btn btn-primary" onclick="mostrarReporte('Se ha decargado el reporte mira la carpeta de descargas (Reporte 2)')">GENERAR</button></td>
                <input type="hidden" name="menu" value="Reportes">
                <td class="text-center">Número de pacientes ingresados en una sede específica<br> para cada modalidad de consulta expresado por mes.</td>
                <td>
                    <div class="form-group m-0 me-3">
                        <label class="label mb-0">
                            <input type="text" id="mes2" name="mes2" class="form-control" placeholder=" ">
                            <span class="span" for="reporte2">Número mes:</span>
                        </label>
                    </div>
                </td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>
                        <button type="submit" name="accion"value="reporte3" class="btn btn-primary" onclick="mostrarReporte('Se ha decargado el reporte mira la carpeta de descargas (Reporte 3)')">GENERAR</button> 
                        <input type="hidden" name="menu" value="Reportes">
                    </td>
                    <td class="text-center">Datos de los pacientes recibidos y sus diagnósticos.<br> Estos datos organizados por sede y por modalidad de consulta para un mes particular.</td>
                    <td>
                        <div class="form-group m-0 me-3">
                            <label class="label mb-0">
                                <input type="text" id="mes3" name="mes3" class="form-control" placeholder=" ">
                                <span class="span" for="reporte3">Número mes:</span>
                            </label>
                        </div>           
                    </td>
                </tr>
                <tr>
                    <th scope="row">4</th>
                    <td >
                        <button type="submit" name="accion" value="reporte4" class="btn btn-primary" onclick="mostrarReporte('Se ha decargado el reporte mira la carpeta de descargas (Reporte 4)')">GENERAR</button>
                        <input type="hidden" name="menu" value="Reportes">
                    </td>
                    <td class="text-center"> Exámenes solicitados  para todos los pacientes de todas<br> las modalidades de consulta organizado por sede para un mes particular.</td>
                    <td>
                        <div class="form-group m-0 me-3">
                            <label class="label mb-0">
                                <input type="text" id="mes4" name="mes4" class="form-control" placeholder=" ">
                                <span class="span" for="reporte4">Número mes:</span>
                            </label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">5</th>
                    <td >
                        <button type="submit" name="accion" value="reporte5" class="btn btn-primary" onclick="mostrarReporte('Se ha decargado el reporte mira la carpeta de descargas (Reporte 5)')">GENERAR</button>
                        <input type="hidden" name="menu" value="Reportes">
                    </td>
                    <td>Datos de todos los pacientes que no asistieron <br> a citas programadas en un determinado mes.</td>
                    <td>
                        <div class="form-group m-0 me-3">
                            <label class="label mb-0">
                                <input type="text" id="mes5" name="mes5" class="form-control" placeholder=" ">
                                <span class="span" for="reporte5">Número mes:</span>
                            </label>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </form>
        <script>
            function mostrarReporte(nombreReporte) {
                alert(nombreReporte);
            }
        </script>
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