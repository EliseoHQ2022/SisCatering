/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Comensal;
import Modelo.Producto;
import Modelo.Venta;
import ModeloDAO.ComensalDAO;
import ModeloDAO.ProductoDAO;
import ModeloDAO.VentaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
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
@WebServlet(name = "ControladorVenta", urlPatterns = {"/ControladorVenta"})
public class ControladorVenta extends HttpServlet {

    String realizar = "index.jsp?page=registrarventa";
    String consultac = "index.jsp?page=reporteporfecha";
    String consultaps = "index.jsp?page=reporteproducto";
    String consultares = "index.jsp?page=reportecomensal";
    Comensal c = new Comensal();
    ComensalDAO dao = new ComensalDAO();
    Producto pr = new Producto();
    ProductoDAO daop = new ProductoDAO();
    Venta v = new Venta();
    VentaDAO daov = new VentaDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String acceso = "";
        String accion = request.getParameter("accion");
        if (accion.equalsIgnoreCase("realizar")) {
            request.setAttribute("idproducto", request.getParameter("id"));
            acceso = realizar;
        } else if (accion.equalsIgnoreCase("registrar")) {
            String Fotocheck = request.getParameter("TxtFotocheck");
            String Error = "", MCorrecto = "";
            int IdUser = Integer.parseInt(request.getSession().getAttribute("IdUser").toString());
            int IdPro = Integer.parseInt(request.getParameter("TxtId"));
            int IdVenta = 0;
            String Numero = "";
            c = dao.Validar(Fotocheck);
            if (c.getIdCom() > 0) {
                pr = daop.list(IdPro);
                if (pr != null) {
                    if (daov.VerificarConsumo(c.getIdCom(), IdPro) != true) {
                        Numero = daov.GenerarNumero();
                        v.setNumero(Numero);
                        v.setIdCom(c.getIdCom());
                        v.setIdPro(IdPro);
                        v.setCantidad(1);
                        v.setPrecio(pr.getPrecio());
                        v.setImporte(pr.getPrecio());
                        v.setIdUser(IdUser);
                        IdVenta = daov.agregar(v);
                        if (IdVenta > 0) {
                            MCorrecto = "Consumo realizado con exito<br> " + c.getNombre();
                        } else {
                            Error = " Error al registrar venta";
                        }
                    } else {
                        Error = "El comensal " + c.getNombre() + " ya tiene registrado su consumo en este servicio";
                    }
                }

            } else {
                Error = "El DNI o Fotocheck ingresado no existe";
            }
            request.setAttribute("idproducto", IdPro);
            request.setAttribute("correcto", MCorrecto);
            request.setAttribute("error", Error);
            acceso = realizar;
        } else if (accion.equalsIgnoreCase("consultac")) {
            String FDesde = request.getParameter("TxtDesde");
            String FHasta = request.getParameter("TxtHasta");
            int IdArea = Integer.parseInt(request.getParameter("CboArea"));
            int IdCar = Integer.parseInt(request.getParameter("CboCargo"));
            ArrayList<Venta> Lista = new ArrayList<>();
            List<Venta> List = daov.VentaComensal(FDesde, FHasta, IdArea, IdCar);
            Iterator<Venta> iter = List.iterator();
            while (iter.hasNext()) {
                v = iter.next();
                Lista.add(v);
            }
            request.setAttribute("lista", Lista);
            request.setAttribute("fechadesde", FDesde);
            request.setAttribute("fechahasta", FHasta);
            request.setAttribute("idarea", IdArea);
            request.setAttribute("idcargo", IdCar);

            acceso = consultac;

        } else if (accion.equalsIgnoreCase("consultaps")) {
            String FDesde = request.getParameter("TxtDesde");
            String FHasta = request.getParameter("TxtHasta");
            int IdPro = Integer.parseInt(request.getParameter("CboProducto"));

            ArrayList<Venta> Lista = new ArrayList<>();
            List<Venta> List = daov.VentaServicio(FDesde, FHasta, IdPro);
            Iterator<Venta> iter = List.iterator();
            while (iter.hasNext()) {
                v = iter.next();
                Lista.add(v);
            }
            request.setAttribute("lista", Lista);
            request.setAttribute("fechadesde", FDesde);
            request.setAttribute("fechahasta", FHasta);
            request.setAttribute("idproducto", IdPro);

            acceso = consultaps;

        }  else if (accion.equalsIgnoreCase("consultares")) {
            String FDesde = request.getParameter("TxtDesde");
            String FHasta = request.getParameter("TxtHasta");
            int IdArea = Integer.parseInt(request.getParameter("CboArea"));
            int IdCar = Integer.parseInt(request.getParameter("CboCargo"));
            ArrayList<Venta> Lista = new ArrayList<>();
            List<Venta> List = daov.VentaResumido(FDesde, FHasta, IdArea, IdCar);
            Iterator<Venta> iter = List.iterator();
            while (iter.hasNext()) {
                v = iter.next();
                Lista.add(v);
            }
            request.setAttribute("lista", Lista);
            request.setAttribute("fechadesde", FDesde);
            request.setAttribute("fechahasta", FHasta);
            request.setAttribute("idarea", IdArea);
            request.setAttribute("idcargo", IdCar);
            acceso = consultares;
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
