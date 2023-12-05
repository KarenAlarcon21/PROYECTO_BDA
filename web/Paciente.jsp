<%-- 
    Document   : Paciente
    Created on : 20/11/2023, 6:49:24 p. m.
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Asignación de Cita</title>
        <link rel="icon" href="https://cdn-icons-png.flaticon.com/128/4366/4366934.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link href="css/estilo.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class = "container mt-4 col-lg-4">
            <form class="px-4 py-3" action="Controlador?menu=Paciente" method="POST">
                <div class = "form-group text-center">
                    <h3>Ingrese su Información</h3>
                    <img src="Imagenes/Logo.png" alt="100" width="200"/><br>
                    <h4 class="titulo"><i>La salud, una inversión para el futuro</i></h4><br>                       
                </div>
                <div class = "form-group">
                    <label class="label">
                        <input type="text" name="txtnombre" class="form-control" 
                               placeholder=" ">
                        <span class="span">Nombres</span>
                    </label>
                </div>
                <div class = "form-group">
                    <label class="label">
                        <input type="text" name="txtapellido" class="form-control" 
                               placeholder=" ">
                        <span class="span">Apellidos</span>
                    </label>
                </div>
                <div class = "form-group">
                    <label class="label">
                        <input type="text" name="txtapellido" class="form-control" 
                               placeholder=" ">
                        <span class="span">Número de Identificación</span>
                    </label>
                </div>
                <div class = "form-group">
                    <label class="label">
                        <input type="text" name="txtcorreo" class="form-control" 
                               placeholder=" ">
                        <span class="span">Correo Electronico</span>
                    </label>
                </div>
                <div class = "form-group">
                    <label class="label">
                        <input type="text" name="txttelefono" class="form-control" 
                               placeholder=" ">
                        <span class="span">Número de Telefono</span>
                    </label>
                </div>
                <div class="form-group">
                    <label class="label">
                        <input type="datetime-local" name="calendario" class="form-control" placeholder="">
                        <select name="lista" class="form-control">
                            <option value="javascript">Bogotá</option>
                            <option value="php">opcion ciudad</option>
                            <option value="java">opcion ciudad</option>
                            <option value="golang">opcion ciudad</option>
                            <option value="python">opcion ciudad</option>
                            <option value="c#">opcion ciudad</option>
                            <option value="C++">Copcion ciudad</option>
                            <option value="erlang">opcion ciudad</option>
                        </select>
                    </label>
                </div>
                <div class="form-group">
                    <label class="label">
                        <input type="datetime-local" name="calendario" class="form-control" placeholder="">
                        <select name="lista" class="form-control">
                            <option value="javascript">Carrera 7</option>
                            <option value="php">opcion direccion</option>
                            <option value="java">opcion direccion</option>
                            <option value="golang">opcion direccion</option>
                            <option value="python">opcion direccion</option>
                            <option value="c#">opcion direccionoption</option>
                            <option value="C++">Copcion direccionoption</option>
                            <option value="erlang">opcion direccion</option>
                        </select>
                    </label>
                </div>
                <div class="form-group">
                    <label class="label">
                        <input type="datetime-local" name="calendario" class="form-control" placeholder=" ">
                    </label>
                </div>
                <div class = "form-group d-grid gap-2 col-5 mx-auto">
                    <label class="label">
                        <input type="text" name="txtciudad" class="form-control" 
                               placeholder=" ">
                        <span class="span">Código Cita</span>
                    </label>
                </div>
                <div class = "form-group d-grid gap-2 col-5 mx-auto">
                    <input type ="submit" name="accion" value="Cancelar Cita" class="btn btn-outline-danger">
                </div>
                <br>
                <div class="d-flex">
                    <div class = "d-grid gap-2 col-5 mx-auto">
                        <input type ="submit" name="accion" value="Regresar" class="btn btn-outline-danger">
                    </div> 
                    <div class = "d-grid gap-2 col-5 mx-auto">
                        <input type ="submit" name="accion" value="Agendar Cita" class="btn btn-outline-success">
                    </div> 
                </div>    
            </form>
            <script src="js/Calendario.js"></script>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    </body>
</html>
