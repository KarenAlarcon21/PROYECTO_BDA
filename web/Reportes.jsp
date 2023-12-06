<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reportes</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body>
        <form action="Controlador" method="post">
        <table class="table table-success table-striped">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th  scope="col">REPORTE</th>
                    <th class="text-center" scope="col">DESCRIPCION</th>
                    <th scope="col">SALIDA</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td><button type="sumbit" name="accion" value="reporte1" class="btn btn-primary" onclick="mostrarReporte('Se ha decargado el reporte mira la carpeta de descargas (Reporte1)')">GENERAR</button></td>
                     <input type="hidden" name="menu" value="Reportes">
                    <td class="text-center"> Consolidado mensual de la cantidad de pacientes<br> ingresados a medicina general, especialidad o urgencias.</td>
                   <td><label for="reporte3">Numero Mes:</label>
                    <input type="text" id="mes3" name="mes1"></td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td><button type="sumbit" name="accion" value="reporte2" class="btn btn-primary" onclick="mostrarReporte('Se ha decargado el reporte mira la carpeta de descargas (Reporte 2)')">GENERAR</button></td>
                    <input type="hidden" name="menu" value="Reportes">
                    <td class="text-center">Número de pacientes ingresados en una sede específica<br> para cada modalidad de consulta expresado por mes.</td>
                    <td><label for="reporte 2">Nombre sede:</label>
                    <input type="text" id="sede" name="sede"></td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>
                        <button type="sumbit" name="accion"value="reporte3" class="btn btn-primary" onclick="mostrarReporte('Se ha decargado el reporte mira la carpeta de descargas (Reporte 3)')">GENERAR</button> 
                        <input type="hidden" name="menu" value="Reportes">
                    </td>
                    <td class="text-center">Datos de los pacientes recibidos y sus diagnósticos.<br> Estos datos organizados por sede y por modalidad de consulta para un mes particular.</td>
                    <td><label for="reporte3">Numero Mes:</label>
                    <input type="text" id="mes3" name="mes3"></td>
                </tr>
                <tr>
                    <th scope="row">4</th>
                    <td >
                        <button type="sumbit" name="accion" value="reporte4" class="btn btn-primary" onclick="mostrarReporte('Se ha decargado el reporte mira la carpeta de descargas (Reporte 4)')">GENERAR</button>
                        <input type="hidden" name="menu" value="Reportes">
                    </td>
                    <td class="text-center"> Exámenes solicitados  para todos los pacientes de todas<br> las modalidades de consulta organizado por sede para un mes particular.</td>
                    <td><label for="reporte4">Numero mes:</label> 
                    <input type="text" id="mes4" name="mes4"></td>
                </tr>
                <tr>
                    <th scope="row">5</th>
                    <td >
                        <button type="sumbit" name="accion" value="reporte5" class="btn btn-primary" onclick="mostrarReporte('Se ha decargado el reporte mira la carpeta de descargas (Reporte 5)')">GENERAR</button>
                        <input type="hidden" name="menu" value="Reportes">
                    </td>
                    <td class="text-center">Datos de todos los pacientes que no asistieron <br>a citas programadas en un determinado mes.</td>
                    <td><label for="nombre">Numero mes:</label>
                     <input type="text" id="mes5" name="mes5"></td>
                </tr>
            </tbody>
        </table>
        </form>>
        <script>
            function mostrarReporte(nombreReporte) {
                alert(nombreReporte);
                // Puedes agregar aquí el código para mostrar el reporte correspondiente
            }
        </script>
    </body>
</html>
