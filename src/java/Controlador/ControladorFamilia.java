package Controlador;

import Modelo.Familia;
import ModeloDAO.FamiliaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ControladorFamilia", urlPatterns = {"/ControladorFamilia"})
public class ControladorFamilia extends HttpServlet {

    String listar = "index.jsp?page=familia";
    String editar = "index.jsp?page=agregarfamilia";
    Familia f = new Familia();
    FamiliaDAO dao = new FamiliaDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String acceso = "";
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("listar")) {
            acceso = listar;
        } else if (action.equalsIgnoreCase("guardar")) {
            String NomFam = request.getParameter("TxtNombre");
            f.setNomFam(NomFam);
            dao.agregar(f);
            acceso = listar;

        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("idfamilia", request.getParameter("id"));
            acceso = editar;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            int IdFam = Integer.parseInt(request.getParameter("TxtId"));
            String NomFam = request.getParameter("TxtNombre");
            f.setIdFam(IdFam);
            f.setNomFam(NomFam);
            dao.editar(f);
            acceso = listar;
        } else if (action.equalsIgnoreCase("eliminar")) {
            int IdFam = Integer.parseInt(request.getParameter("id"));
            dao.eliminar(IdFam);
            acceso = listar;
        }
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
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
        processRequest(request, response);
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
