

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Cargo"%>
<%@page import="ModeloDAO.CargoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Start Content-->
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="header-title">Registro de cargos</h4>
                    <a href="./index.jsp?page=agregarcargo" class="btn btn-primary btn-sm">Nuevo cargo</a>
                    <table class="mb-0 table">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Descripcion</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                         <%
                            CargoDAO dao = new CargoDAO();
                            List<Cargo> list = dao.listar();
                            Iterator<Cargo> iter = list.iterator();
                            Cargo ca = null;
                            while (iter.hasNext()) {
                                ca = iter.next();
                        %>
                        <tbody>
                            <tr>
                                <th scope="row"><%=ca.getIdCar()%></th>
                                <td><%=ca.getNomCar()%></td>
                                <td>
                                    <a href="ControladorCargo?accion=editar&id=<%=ca.getIdCar()%>" title="Editar datos" class="btn btn-primary btn-sm"><span class="uil-edit" aria-hidden="true"></span></a>
                                    <a href="ControladorCargo?accion=eliminar&id=<%=ca.getIdCar()%>" title="Eliminar" onclick="return confirm('Esta seguro de eliminar?')" class="btn btn-danger btn-sm"><span class="uil-trash" aria-hidden="true"></span></a>
                                </td>
                            </tr>
                             <%}%>
                        </tbody>
                    </table>
                    <label class="col-sm-6 control-label" id="contador">Cantidad de registros <%=list.size()%>  </label>
                </div>
            </div>
        </div>
    </div>
    <!-- end row -->






</div> <!-- container -->