/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import static Controlador.Encriptar_Password.cifrarAES;
import Modelo.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.security.SecureRandom;
import java.time.LocalDate;

import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.SecretKey;
//import javax.mail.MessagingException;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    Enviar_Correo enviar_correo = new Enviar_Correo();
    Encriptar_Password encriptar = new Encriptar_Password();
    MedicoDTO medico = new MedicoDTO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        HttpSession sesion = request.getSession(false);

        if (menu.equals("Principal")) {

            request.getRequestDispatcher("Principal.jsp").forward(request, response);

        }

        if (menu.equals("RecuperarPassword")) {

            request.getRequestDispatcher("Recuperar_Password.jsp").forward(request, response);

        }

        if (menu.equals("Paciente")) {

            switch (accion) {

                case "Regresar":

                    request.getRequestDispatcher("index.jsp").forward(request, response);

                    break;

                case "Agendar Cita":

                    //aqui se agenda la cita
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                    break;

                default:

                    request.getRequestDispatcher("index.jsp").forward(request, response);

            }

        }

        if (menu.equals("Recuperar_Password")) {

            switch (accion) {

                case "Regresar":

                    request.getRequestDispatcher("index.jsp").forward(request, response);

                    break;

                case "Recuperar":

                    String correo_destino = request.getParameter("txtcorreo");
                    String licencia = request.getParameter("txtlicencia");
                    String usuario = request.getParameter("txtuser");

                    LocalDate fechaAhora = LocalDate.now();
                    LocalTime horaAhora = LocalTime.now();

                    DateTimeFormatter formatoFecha = DateTimeFormatter.ofPattern("dd/MM/yyyy");
                    DateTimeFormatter formatoHora = DateTimeFormatter.ofPattern("HH:mm:ss");
                    String hora = horaAhora.format(formatoHora);
                    String fecha = fechaAhora.format(formatoFecha);

                    if (!correo_destino.isEmpty() && !licencia.isEmpty() && !usuario.isEmpty()) {

                        try {

                            SecretKey clave = encriptar.obtenerOGenerarClaveSimetrica();

                            String contraseña = nuevaContraseña();

                            medico.setPassword(contraseña);
                            medico.setPassword(cifrarAES(encriptar.Encriptar(medico), clave));

                            //Hay que hacer una validacion previa de que las credenciales ingresadas existan en la base de datos
                            String asunto = "Recuperación de contraseña";
                            String contenido = "Estimado/a <strong>" + medico.getNombre() + " " + medico.getApellido() + "</strong> con Número de Licencia Medica <strong>" + medico.getLicencia_medica() + "</strong><br><br>"
                                    + "Este correo es para informarle que se ha solicitado recuperación de contraseña el día <strong>" + fecha + "</strong> a las <strong>" + hora + "</strong> hora de Bogotá.<br><br>"
                                    + "En caso de requerir el restablecimiento de su contraseña, se le recomienda seguir detenidamente las instrucciones detalladas en el correo electrónico que ha sido enviado.<br>"
                                    + "Si no ha solicitado el restablecimiento de su contraseña o si tiene alguna inquietud adicional, le sugerimos ponerse en contacto con nuestro equipo de soporte a través de la dirección de correo electrónico <strong>correoalertas1@gmail.com.</strong> <br><br>"
                                    + "A continuación se presentan las instrucciones detalladas:<br><br>"
                                    + "<strong>1.</strong> Redirigase a la pagina de inicio de sesión<br>"
                                    + "<strong>2.</strong> Ingrese su Usuario con la contraseña adjunta en este correo<br><br>"
                                    + "Su nueva contraseña es: <strong>" + contraseña + "</strong><br><br>"
                                    + "Es importante señalar que la EPS no se hace responsable por la pérdida o extravío de contraseñas. Se recomienda encarecidamente a los empleados mantener la confidencialidad de sus credenciales, evitando compartirlas con terceros. En caso de sospecha o creencia de que la contraseña ha sido comprometida, se insta a comunicarse con la EPS y solicitar el cambio de contraseña para proteger la seguridad de la cuenta.<br><br>"
                                    + "Atentamente,<br><br>"
                                    + "<strong>ServiSalud EPS</strong>";

                            //try {

                                //enviar_correo.Contenido_Correo(correo_destino, asunto, contenido);
                                request.setAttribute("envioExitoso", true);
                                request.getRequestDispatcher("Recuperar_Password.jsp").forward(request, response);

                           // } catch (MessagingException ex) {

                               // Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);

                            //}

                        } catch (Exception ex) {

                            ex.printStackTrace();

                        }
                    }

                    break;

                default:

                    request.getRequestDispatcher("index.jsp").forward(request, response);

            }

        }

        if (menu.equals("Principal_Menu")) {

            switch (accion) {

                case "Inicio":

                    request.getRequestDispatcher("Principal.jsp").forward(request, response);

                    break;

                case "Citas_Agendadas":

                    //Aqui el medico puede ver las citas que tiene agendadss en el dia
                    break;

                case "Historial_Citas":

                    //Aqui puede ver el historial de las citas de las que ha estado encargado, tanto como la asistencia de los pacientes
                    break;

                case "Informacion_Pacientes":

                    //Aqui podrar visualizar el historial medico de un paciente en especifico
                    break;

                case "Remitir_Paciente":

                    //Aqui puede hacer el traslado de un paciente
                    break;

                case "Cerrar_Sesion":

                    Object usuario = sesion.getAttribute("usuario");

                    sesion.removeAttribute("usuario");
                    sesion.invalidate();
                    request.getRequestDispatcher("index.jsp").forward(request, response);

                    break;

                default:

                    request.getRequestDispatcher("index.jsp").forward(request, response);

            }

        }
    }

    private static String nuevaContraseña() {

        String caracteres = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-_=+";

        SecureRandom random = new SecureRandom();
        StringBuilder contrasena = new StringBuilder();

        for (int i = 0; i < 9; i++) {
            int indiceCaracter = random.nextInt(caracteres.length());
            contrasena.append(caracteres.charAt(indiceCaracter));
        }

        return contrasena.toString();
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
