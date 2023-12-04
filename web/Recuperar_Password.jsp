<%-- 
    Document   : Recuperar_Password
    Created on : 20/11/2023, 6:49:24 p. m.
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recuperar Contraseña</title>
        <link rel="icon" href="https://cdn-icons-png.flaticon.com/128/4366/4366934.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link href="css/estilo.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class = "container mt-4 col-lg-5">
            <form class="px-4 py-3" action="Controlador?menu=Recuperar_Password" method="POST">
                <div class = "form-group text-center">
                    <h3>Recuperar Contraseña</h3>
                    <img src="Imagenes/Logo.png" alt="100" width="200"/><br>
                    <h4 class="titulo_2">Datos del usuario</h4><br>
                </div>
                <div class="form-group">
                    <label class="label">
                        <input type="text" name="txtuser" class="form-control" 
                               placeholder=" ">
                        <span class="span">Usuario</span>
                    </label>
                </div>
                <div class="form-group">
                    <label class="label">
                        <input type="text" name="txtlicencia" class="form-control" 
                               placeholder=" ">
                        <span class="span">Licencia Medica</span>
                    </label>
                </div>
                <div class="form-group"> 
                    <label class="label">
                        <input type="text" name="txtcorreo" class="form-control" 
                               placeholder=" ">
                        <span class="span">Correo Electronico</span>
                    </label>
                </div>
                <br>    
                <div class="d-flex">
                    <div class="d-grid gap-2 col-5 mx-auto">        
                        <button type="submit" name="accion" value="Regresar" class="btn btn-outline-danger">Regresar</button>
                    </div>
                    <div class="d-grid gap-2 col-5 mx-auto">                            
                        <button type="submit" name="accion" value="Recuperar" class="btn btn-outline-success">Recuperar Contraseña</button>
                    </div>
                </div>
            </form>
            <script>
                <% if (request.getAttribute("envioExitoso") != null && (boolean) request.getAttribute("envioExitoso")) { %>
                alert("El correo electronico se ha enviado con éxito");
                <% } %>
            </script>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    </body>
</html>
