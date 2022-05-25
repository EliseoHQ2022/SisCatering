

<%@page import="Modelo.Venta"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Producto"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    int cantidad = 0;
    int cantidadc=0;
    double Total = 0.0;
    
    int IdProducto = 0;
    String FDesde = "";
    String FHasta = "";
    if (request.getAttribute("fechadesde") != null) {
        FDesde = (String) request.getAttribute("fechadesde");
    }
    if (request.getAttribute("fechahasta") != null) {
        FHasta = (String) request.getAttribute("fechahasta");
    }
    if (request.getAttribute("idproducto") != null) {
        IdProducto = Integer.parseInt(request.getAttribute("idproducto").toString());

    }
    
%>

<div class="container-fluid">



    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="header-title">Reporte de de venta por servicio</h4>

                    <form class="row row-cols-lg-auto g-3 align-items-center" method="POST" action="ControladorVenta">
                        <div class="col-12">
                            <label class="form-label">Desde</label>
                            <input type="date" class="form-control date" name="TxtDesde" value="<%=FDesde%>">
                        </div>
                        <div class="col-12">
                            <label class="form-label">Hasta</label>
                            <input type="date" class="form-control date" name="TxtHasta" value="<%=FHasta%>">
                        </div>
                        <div class="col-12">
                            <label class="form-label">Servicio</label>

                            <select name="CboProducto" class="form-select">
                                <option value="0">Todos</option>
                                <%
                                    ProductoDAO dao = new ProductoDAO();
                                    List<Producto> lista = dao.listar();
                                    Iterator<Producto> itera = lista.iterator();
                                    Producto p = null;
                                    String SelectA = "";
                                    while (itera.hasNext()) {
                                        p = itera.next();
                                %>

                                <option value="<%=p.getIdPro()%>" <%
                                    int _IdPro;
                                    SelectA = "";
                                    _IdPro = p.getIdPro();
                                    if (_IdPro == IdProducto) {
                                        SelectA = "selected";
                                    }
                                        %><%=SelectA%>><%=p.getNomPro()%></option>
                                <%}%>

                            </select>
                        </div>
                        <div class="col-12">
                            <button type="submit" class="btn btn-primary" name="accion" value="consultaps">Consultar</button>
                        </div>
                    </form>
                    <br>
                    <div class="table-responsive">
                        <table class="mb-0 table" id="mitabla">
                            <thead>
                                <tr>
                                    <th>Fecha</th>
                                    <th>Servicio</th>
                                    <th>Cantidad</th>
                                    <th>Importe</th>

                                </tr>
                            </thead>

                            <tbody>
                               <%
                                    if (request.getAttribute("lista") != null) {

                                        ArrayList<Venta> listav = (ArrayList<Venta>) request.getAttribute("lista");
                                        for (int i = 0; i < listav.size(); i++) {
                                            Venta v = listav.get(i);
                                            Total += v.getImporte();
                                            cantidadc += v.getCantidad();
                                            cantidad++;
                                %>
                                <tr>
                                    <td><%=v.getFecha()%></td>
                                    <td><%=v.getNombreP()%></td>
                                    <td align="right"><%=v.getCantidad()%></td>
                                    <td align="right"><%=v.getImporte()%></td>
                                </tr>
                                <%
                                        }
                                    }
                                %>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td><h5>Registros <%=cantidad%></h5></td>
                                    <td><h5>Total</h5></td>
                                    <td align="right"><h5> <%=cantidadc%></h5></td>
                                    <td align="right"><h5> S/<%=Total%></h5></td>
                                </tr>
                            </tfoot>

                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- end row -->
</div> <!-- container -->