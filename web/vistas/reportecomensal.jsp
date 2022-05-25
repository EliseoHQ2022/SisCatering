
<%@page import="Modelo.Cargo"%>
<%@page import="ModeloDAO.CargoDAO"%>
<%@page import="ModeloDAO.CargoDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Area"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.AreaDAO"%>
<%@page import="Modelo.Venta"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    int cantidad = 0;
    double Total = 0.0;
    int IdArea = 0;
    int IdCar = 0;
    String FDesde = "";
    String FHasta = "";
    if (request.getAttribute("fechadesde") != null) {
        FDesde = (String) request.getAttribute("fechadesde");
    }
    if (request.getAttribute("fechahasta") != null) {
        FHasta = (String) request.getAttribute("fechahasta");
    }
    if (request.getAttribute("idarea") != null) {
        IdArea=Integer.parseInt(request.getAttribute("idarea").toString());
        
    }
    if (request.getAttribute("idcargo") != null) {
       
        IdCar=Integer.parseInt(request.getAttribute("idcargo").toString());
    }
%>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="header-title">Reporte de consumo por fecha</h4>

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
                            <label class="form-label">Area</label>

                            <select name="CboArea" class="form-select">
                                <option value="0">Todos</option>
                                <%
                                    AreaDAO daa = new AreaDAO();
                                    List<Area> lista = daa.listar();
                                    Iterator<Area> itera = lista.iterator();
                                    Area ar = null;
                                    String SelectA = "";
                                    while (itera.hasNext()) {
                                        ar = itera.next();
                                %>

                                <option value="<%=ar.getIdArea()%>" <%
                                    int _IdArea;
                                    SelectA = "";
                                    _IdArea = ar.getIdArea();
                                    if (_IdArea == IdArea) {
                                        SelectA = "selected";
                                    }
                                        %><%=SelectA%>><%=ar.getNomArea()%></option>
                                <%}%>

                            </select>
                        </div>
                        <div class="col-12">
                            <label class="form-label">Cargo</label>

                            <select name="CboCargo" class="form-select">
                                <option value="0">Todos</option>
                                <%
                                    CargoDAO dac = new CargoDAO();
                                    List<Cargo> list = dac.listar();
                                    Iterator<Cargo> iter = list.iterator();
                                    Cargo ca = null;
                                    String Select = "";
                                    while (iter.hasNext()) {
                                        ca = iter.next();
                                %>
                                <option value="<%=ca.getIdCar()%>" <%
                                    int _IdCar;
                                    Select = "";
                                    _IdCar = ca.getIdCar();

                                    if (_IdCar == IdCar) {
                                        Select = "selected";
                                    }
                                        %><%=Select%>><%=ca.getNomCar()%></option>
                                <%}%>

                            </select>
                        </div>
                        <div class="col-12">
                            <button type="submit" class="btn btn-primary" name="accion" value="consultac">Consultar</button>
                           
                        </div>
                    </form>
                    <br>
                    <div class="table-responsive">
                        <table class="mb-0 table" id="mitabla">
                            <thead>
                                <tr>
                                    <th>Nº Ticket</th>
                                    <th>Fecha</th>
                                    <th>DNI</th>
                                    <th>Comensal</th>
                                    <th>Servicio</th>
                                    <th>Importe</th>

                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    if (request.getAttribute("lista") != null) {

                                        ArrayList<Venta> listav = (ArrayList<Venta>) request.getAttribute("lista");
                                        for (int i = 0; i < listav.size(); i++) {
                                            Venta v = listav.get(i);
                                            Total += v.getPrecio();
                                            cantidad = cantidad + 1;
                                %>

                                <tr>
                                    <td><%=v.getNumero()%></td>
                                    <td><%=v.getFecha()%></td>
                                    <td><%=v.getDNI()%></td>
                                    <td><%=v.getNombreC()%></td>
                                    <td><%=v.getNombreP()%></td>
                                    <td align="right"><%=v.getPrecio()%></td>
                                </tr>
                                <%
                                        }
                                    }
                                %>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td colspan="4"><h5>Cantidad de registros <%=cantidad%></h5></td>
                                    <td colspan="2" align="right"><h5>Total S/ <%=Total%></h5></td>
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