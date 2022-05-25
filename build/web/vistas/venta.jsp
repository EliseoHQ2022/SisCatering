

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Producto"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container-fluid">



    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="header-title">Seleccione el servicio</h4>
                    <div class="row row-cols-1 row-cols-md-3 g-4">
                        <%
                            ProductoDAO dao = new ProductoDAO();
                            List<Producto> list = dao.listar();
                            Iterator<Producto> iter = list.iterator();
                            Producto pr = null;
                            while (iter.hasNext()) {
                                pr = iter.next();

                        %>
                        <a href="ControladorVenta?accion=realizar&id=<%=pr.getIdPro()%>">
                            <div class="col">
                                <div class="card">
                                    <img src="./imagenes/productos/<%=pr.getImagen()%>" class="card-img-top" height="200" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title"><%=pr.getNomPro()%></h5>

                                    </div>
                                </div>
                            </div>
                        </a>
                        <%}%>

                    </div>




                </div>
            </div>
        </div>
    </div>
    <!-- end row -->






</div> <!-- container -->
