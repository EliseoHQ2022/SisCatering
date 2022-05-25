<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="header-title">Registro de usuarios</h4>
                    <a href="./index.jsp?page=agregarusuario" class="btn btn-primary btn-sm">Nuevo usuario</a>
                    <div class="table-responsive">
                    <table class="mb-0 table" >
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Nombre</th>
                                <th>Usuario</th>
                                <th>Tipo</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                         <%
                            UsuarioDAO dao = new UsuarioDAO();
                            List<Usuario> list = dao.listar();
                            Iterator<Usuario> iter = list.iterator();
                            Usuario us = null;
                            while (iter.hasNext()) {
                                us = iter.next();
                        %>
                        <tbody>
                            <tr>
                                <th scope="row"><%=us.getIdUser()%></th>
                                <td><%=us.getNombre()%></td>
                                <td><%=us.getNomUser()%></td>
                                <td><%=us.getTipoUser()%></td>
                                <td>
                                    <a href="ControladorUsuario?accion=editar&id=<%=us.getIdUser()%>" title="Editar datos" class="btn btn-primary btn-sm"><span class="uil-edit" aria-hidden="true"></span></a>
                                    <a href="ControladorUsuario?accion=eliminar&id=<%=us.getIdUser()%>" title="Eliminar" onclick="return confirm('Esta seguro de eliminar?')" class="btn btn-danger btn-sm"><span class="uil-trash" aria-hidden="true"></span></a>
                                </td>
                            </tr>
                             <%}%>
                        </tbody>
                    </table>
                        </div>
                    <label class="col-sm-6 control-label" id="contador">Cantidad de registros <%=list.size()%>  </label>
                </div>
            </div>
        </div>
    </div>
    <!-- end row -->
</div> <!-- container -->
