package Controlador;

import Modelo.Producto;
import ModeloDAO.ProductoDAO;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet(name = "ControladorProducto", urlPatterns = {"/ControladorProducto"})
public class ControladorProducto extends HttpServlet {

    String listar = "index.jsp?page=producto";
    String editar = "index.jsp?page=agregarproducto";
    Producto p = new Producto();
    ProductoDAO dao = new ProductoDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String acceso = "";
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("listar")) {
            acceso = listar;
        } else if (action.equalsIgnoreCase("guardar")) {
            String NomPro = request.getParameter("TxtNombre");
            int IdFam = Integer.parseInt(request.getParameter("CboFamilia"));
            double Costo = Double.parseDouble(request.getParameter("TxtCosto"));
            double Precio = Double.parseDouble(request.getParameter("TxtPrecio"));
            String Imagen = "";

            Part filePart = request.getPart("foto");
            String fileName = filePart.getSubmittedFileName();
            String ruta = getServletContext().getRealPath("/imagenes/productos");
            ruta=ruta + File.separator;
            ruta=ruta + fileName;
            
            InputStream is = filePart.getInputStream();
            boolean rpta = CargarImagen(is, ruta);
            if (rpta) {
                Imagen = fileName;
            }
           p.setIdFam(IdFam);
            p.setNomPro(NomPro);
            p.setCosto(Costo);
            p.setPrecio(Precio);
            p.setImagen(Imagen);
            dao.agregar(p);
            acceso = listar;
        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("idproducto", request.getParameter("id"));
            acceso = editar;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            int IdPro = Integer.parseInt(request.getParameter("TxtId"));
            String NomPro = request.getParameter("TxtNombre");
            int IdFam = Integer.parseInt(request.getParameter("CboFamilia"));
            double Costo = Double.parseDouble(request.getParameter("TxtCosto"));
            double Precio = Double.parseDouble(request.getParameter("TxtPrecio"));
            String Imagen = "";
            
            Part filePart = request.getPart("foto");
            String fileName = filePart.getSubmittedFileName();
            String ruta = getServletContext().getRealPath("/imagenes/productos");
            ruta=ruta + File.separator;
            ruta=ruta + fileName;
             InputStream is = filePart.getInputStream();
            boolean rpta = CargarImagen(is, ruta);
            if (rpta) {
                Imagen = fileName;
            }
            
            p.setIdPro(IdPro);
            p.setIdFam(IdFam);
            p.setIdFam(IdFam);
            p.setNomPro(NomPro);
            p.setCosto(Costo);
            p.setPrecio(Precio);
            p.setImagen(Imagen);
            dao.editar(p);
            acceso = listar;
        } else if (action.equalsIgnoreCase("eliminar")) {
            int IdPro = Integer.parseInt(request.getParameter("id"));
            dao.eliminar(IdPro);
            acceso = listar;
        }

        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    public boolean CargarImagen(InputStream is, String ruta) {
        boolean rpta = false;
        try {
            byte[] byt = new byte[is.available()];
            is.read(byt);
            FileOutputStream fops = new FileOutputStream(ruta);
            fops.write(byt);
            fops.flush();
            fops.close();
            rpta = true;
        } catch (Exception e) {
            System.out.println("Error + " + e);
        }
        return rpta;
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
