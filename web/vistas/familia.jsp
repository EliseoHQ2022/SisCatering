
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Familia"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.FamiliaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="header-title">Registro de familia</h4>
                    <a href="./index.jsp?page=agregarfamilia" class="btn btn-primary btn-sm">Nueva familia</a>
                    <table class="mb-0 table" >
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Descripcion</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>

                        <%
                            FamiliaDAO dao = new FamiliaDAO();
                            List<Familia> list = dao.listar();
                            Iterator<Familia> iter = list.iterator();
                            Familia fa = null;
                            while (iter.hasNext()) {
                                fa = iter.next();
                        %>

                        <tbody>
                            <tr>
                                <th scope="row"><%=fa.getIdFam()%></th>
                                <td><%=fa.getNomFam()%></td>
                                <td>
                                    <a href="ControladorFamilia?accion=editar&id=<%=fa.getIdFam()%>" title="Editar datos" class="btn btn-primary btn-sm"><span class="uil-edit" aria-hidden="true"></span></a>
                                    <a href="ControladorFamilia?accion=eliminar&id=<%=fa.getIdFam()%>" title="Eliminar" onclick="return confirm('Esta seguro de eliminar?')" class="btn btn-danger btn-sm"><span class="uil-trash" aria-hidden="true"></span></a>
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