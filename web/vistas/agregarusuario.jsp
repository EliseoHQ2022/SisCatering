

<%@page import="Modelo.Usuario"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container-fluid">
    <%
        UsuarioDAO dao = new UsuarioDAO();
        String titulo = "Registrar nuevo usuario";
        String Nombre = "", NomUser = "", Password = "", TipoUser = "";
        String SelecU = "", SelecA = "";
        String Valor = "Guardar";
        int IdUser = 0;
        if (request.getAttribute("idusuario") != null) {
            IdUser = Integer.parseInt((String) request.getAttribute("idusuario"));
            Usuario u = (Usuario) dao.list(IdUser);
            Nombre = u.getNombre();
            NomUser = u.getNomUser();
            Password = u.getPasUser();
            TipoUser = u.getTipoUser();
            if (TipoUser.equalsIgnoreCase("A")) {
                SelecA = "selected";
            } else {
                SelecU = "selected";
            }
            Valor = "Actualizar";
            titulo = "Modificar producto";
        }
    %>
    <div class="row">
        <div class="col-xl-6">
            <div class="card">
                <div class="card-body">
                    <h4 class="header-title">Registrar nuevo producto</h4>

                    <form class="form-horizontal" method="post" action="ControladorUsuario">
                        <input type="hidden" name="TxtId" value="<%=IdUser%>">

                        <div class="mb-3">
                            <label class="col-sm-6 control-label">Nombre completo</label>
                            <input type="text" name="TxtNombre" class="form-control" placeholder="Nombre" value="<%=Nombre%>" required>
                        </div>
                        <div class="mb-3">
                            <label class="col-sm-6 control-label">Nombre usuario</label>
                            <input type="text" name="TxtUsuario" class="form-control" placeholder="Nombre" value="<%=NomUser%>" required>
                        </div>
                        <div class="mb-3">
                            <label class="col-sm-3 control-label">Contraseña</label>
                            <input type="password" name="TxtPassword" class="form-control" placeholder="Nombre" value="<%=Password%>" required>
                        </div>
                        <div class="mb-3">
                            <label class="col-sm-6 control-label">Tipo de usuario</label>
                            <select name="CboTipoUser" class="form-select">
                                <option value="U" <%=SelecU%>>CAJERO</option>
                                <option value="A"<%=SelecA%>>ADMINISTRADOR</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">&nbsp;</label>
                            <div class="col-sm-6">
                                <input type="submit" name="accion" class="btn btn-sm btn-primary" value="<%=Valor%>">
                                <a href="./index.jsp?page=usuario" class="btn btn-sm btn-danger">Cancelar</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- end row -->





        </div> <!-- container -->

