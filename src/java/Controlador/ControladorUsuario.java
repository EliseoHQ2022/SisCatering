package Controlador;

import Modelo.Usuario;
import ModeloDAO.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ControladorUsuario", urlPatterns = {"/ControladorUsuario"})
public class ControladorUsuario extends HttpServlet {

    String listar = "index.jsp?page=usuario";
    String editar = "index.jsp?page=agregarusuario";
    UsuarioDAO dao = new UsuarioDAO();
    Usuario u = new Usuario();
    int r = 0;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String acceso = "";
        String accion = request.getParameter("accion");
        if (accion.equalsIgnoreCase("ingresar")) {
            String nom = request.getParameter("usuario");
            String pas = request.getParameter("password");
            System.out.println(nom);
            u.setNomUser(nom);
            u.setPasUser(pas);
            u = dao.Validar(u);
            if (u.getIdUser() > 0) {
                HttpSession SesionUser=request.getSession();
                SesionUser.setAttribute("IdUser", u.getIdUser());
                SesionUser.setAttribute("nombre", u.getNomUser());
                SesionUser.setAttribute("TipoUsuario", u.getTipoUser());
                if (u.getTipoUser().equalsIgnoreCase("A")){
                     SesionUser.setAttribute("tipou", "Admin");
                }else{
                   SesionUser.setAttribute("tipou", "User");
                }
                request.getRequestDispatcher("index.jsp").forward(request, response);
            } else {
                request.setAttribute("mensaje", "Usuario incorrecto");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
            return;
        }else if (accion.equalsIgnoreCase("cerrar")){
             HttpSession SesionUser=request.getSession();
             SesionUser.invalidate();
             request.getRequestDispatcher("login.jsp").forward(request, response);
             return;
        } else if (accion.equalsIgnoreCase("listar")) {

        } else if (accion.equalsIgnoreCase("listar")) {
            acceso = listar;
        } else if (accion.equalsIgnoreCase("guardar")) {
            String Nombre = request.getParameter("TxtNombre");
            String Usuario = request.getParameter("TxtUsuario");
            String Password = request.getParameter("TxtPassword");
            String TipoU = request.getParameter("CboTipoUser");
            u.setNombre(Nombre);
            u.setNomUser(Usuario);
            u.setPasUser(Password);
            u.setTipoUser(TipoU);
            dao.agregar(u);
            acceso = listar;
        } else if (accion.equalsIgnoreCase("editar")) {
            request.setAttribute("idusuario", request.getParameter("id"));
            acceso = editar;

        } else if (accion.equalsIgnoreCase("actualizar")) {
            int IdUser = Integer.parseInt(request.getParameter("TxtId"));
            String Nombre = request.getParameter("TxtNombre");
            String Usuario = request.getParameter("TxtUsuario");
            String Password = request.getParameter("TxtPassword");
            String TipoU = request.getParameter("CboTipoUser");
            u.setIdUser(IdUser);
            u.setNombre(Nombre);
            u.setNomUser(Usuario);
            u.setPasUser(Password);
            u.setTipoUser(TipoU);
            dao.editar(u);
            acceso = listar;

        } else if (accion.equalsIgnoreCase("eliminar")) {
            int IdUser = Integer.parseInt(request.getParameter("id"));
            dao.eliminar(IdUser);
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
