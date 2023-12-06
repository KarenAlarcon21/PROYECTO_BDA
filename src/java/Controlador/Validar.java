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
import javax.crypto.SecretKey;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "Validar", urlPatterns = {"/Validar"})
public class Validar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
            out.println("<title>Servlet Validar</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Validar at " + request.getContextPath() + "</h1>");
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

        switch (menu) {

            case "Ingresar":

             
                try {

                SecretKey clave = encriptar.obtenerOGenerarClaveSimetrica();

                medico.setUser(request.getParameter("txtuser"));
                medico.setPassword(request.getParameter("txtpass"));

                medico.setPassword(cifrarAES(encriptar.Encriptar(medico), clave));
                System.out.println(medico.getPassword());
                //medico = edao.validar(medico);
                if (medico.getUser() != null) {

                    request.setAttribute("usuario", medico);
                    HttpSession sesion = request.getSession();
                    sesion.setAttribute("usuario", medico);

                    request.getRequestDispatcher("Reportes.jsp").forward(request, response);

                    sesion.removeAttribute("usuario");
                    sesion.invalidate();

                } else {

                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }

            } catch (Exception e) {

                e.printStackTrace();

            }

            break;

            case "Paciente":

                request.getRequestDispatcher("Paciente.jsp").forward(request, response);

                break;

            default:

                request.getRequestDispatcher("index.jsp").forward(request, response);

        }
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
