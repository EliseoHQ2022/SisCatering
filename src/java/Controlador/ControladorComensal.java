package Controlador;

import Modelo.Comensal;
import ModeloDAO.ComensalDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author GODS PC
 */
@WebServlet(name = "ControladorComensal", urlPatterns = {"/ControladorComensal"})
public class ControladorComensal extends HttpServlet {

    String listar = "index.jsp?page=comensal";
    String editar = "index.jsp?page=agregarcomensal";
    Comensal p = new Comensal();
    ComensalDAO dao = new ComensalDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String acceso = "";
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("listar")) {
            acceso = listar;
        } else if (action.equalsIgnoreCase("guardar")) {
            String Nombre = request.getParameter("TxtNombre");
            int IdCar = Integer.parseInt(request.getParameter("CboCargo"));
            int IdArea = Integer.parseInt(request.getParameter("CboArea"));
            String DNI = request.getParameter("TxtDNI");
            String Fotocheck = request.getParameter("TxtFotocheck");
            String FechaN = request.getParameter("TxtFechaN");
            String Sexo = request.getParameter("CboSexo");
            p.setIdCar(IdCar);
            p.setIdArea(IdArea);
            p.setDNI(DNI);
            p.setFotocheck(Fotocheck);
            p.setNombre(Nombre);
            p.setFechaN(FechaN);
            p.setSexo(Sexo);
            dao.agregar(p);
            acceso = listar;
        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("idcomensal", request.getParameter("id"));
            acceso = editar;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            int IdCom = Integer.parseInt(request.getParameter("TxtId"));
            String Nombre = request.getParameter("TxtNombre");
            int IdCar = Integer.parseInt(request.getParameter("CboCargo"));
            int IdArea = Integer.parseInt(request.getParameter("CboArea"));
            String DNI = request.getParameter("TxtDNI");
            String Fotocheck = request.getParameter("TxtFotocheck");
            String FechaN = request.getParameter("TxtFechaN");
            String Sexo = request.getParameter("CboSexo");
            p.setIdCom(IdCom);
            p.setIdCar(IdCar);
            p.setIdArea(IdArea);
            p.setDNI(DNI);
            p.setFotocheck(Fotocheck);
            p.setNombre(Nombre);
            p.setFechaN(FechaN);
            p.setSexo(Sexo);
            dao.editar(p);
            acceso = listar;
        } else if (action.equalsIgnoreCase("eliminar")) {
            int IdCom = Integer.parseInt(request.getParameter("id"));
            dao.eliminar(IdCom);
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
