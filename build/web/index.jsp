<%-- 
    Document   : index
    Created on : 20/11/2023, 6:49:24 p. m.
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio de Sesión</title>
        <link rel="icon" href="https://cdn-icons-png.flaticon.com/128/4366/4366934.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link href="css/estilo.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class = "container mt-4 col-lg-4">
            <form class="px-4 py-3" action="Validar" method="POST">
                <div class = "form-group text-center">
                    <h3>Inicio de sesión</h3>
                    <img src="Imagenes/Logo.png" alt="100" width="200"/><br>
                    <h3 class="titulo"><i>Bienvenidos al Sistema</i></h3><br>                       
                </div>
                <div class = "form-group">
                    <label class="label">
                        <input type="text" name="txtuser" class="form-control" 
                               placeholder=" ">
                        <span class="span">Nombre de Usuario</span>
                    </label>
                </div>
                <div class = "form-group">
                    <label class="label">
                        <input type="password" name="txtpass" class="form-control" 
                               placeholder=" ">
                        <span class="span">Contraseña</span>
                    </label>
                </div><br>
                <div class="mb-3">
                    <div>
                        <input type="checkbox" class="form-check-input" id="dropdownCheck">
                        <label class="form-check-label" for="dropdownCheck">Recordar contraseña</label>
                    </div><br>
                </div>
                <div class="d-flex">
                    <div class = "d-grid gap-2 col-5 mx-auto">
                        <input type ="submit" name="menu" value="Paciente" class="btn btn-outline-primary">
                    </div>       
                    <div class = "d-grid gap-2 col-5 mx-auto">
                        <input type ="submit" name="menu" value="Ingresar" class="btn btn-outline-success">
                    </div> 
                </div>
            </form>                       
            <div class="dropdown-divider"></div>
            <form class="px-4 py-3" action="Controlador" method="POST">
                <div class="titulo_3">
                    <input type="hidden" name="menu" value="RecuperarPassword">
                    <button type="submit" class="dropdown-item">¿Olvidaste tu contraseña?</button>
                </div>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    </body>
</html>
