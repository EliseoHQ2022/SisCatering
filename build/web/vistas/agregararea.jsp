
<%@page import="Modelo.Area"%>
<%@page import="ModeloDAO.AreaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container-fluid">
    <%
        AreaDAO dao=new AreaDAO();
        String titulo="Registrar nueva area";
        String Nombre="";
        String Valor="Guardar";
        int IdArea=0;
        if (request.getAttribute("idarea")!=null){
            IdArea =Integer.parseInt((String)request.getAttribute("idarea"));
            Area a=(Area)dao.list(IdArea);
            Nombre=a.getNomArea();
            Valor="Actualizar";
            titulo="Modificar area";
        }
    %>
    <div class="row">
        <div class="col-xl-6">
            <div class="card">
                <div class="card-body">
                    <h4 class="header-title"><%=titulo%></h4>

                    <form class="form-horizontal" method="post" action="ControladorArea">
                            <div class="mb-3">
                                 <input type="hidden" name="TxtId" value="<%=IdArea%>">
                                <label class="col-sm-3 control-label">Descripcion</label>
                               
                                <input type="text" name="TxtNombre" class="form-control" placeholder="Nombre" value="<%=Nombre%>" required>

                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">&nbsp;</label>
                                <div class="col-sm-6">
                                    <input type="submit" name="accion" class="btn btn-sm btn-primary" value="<%=Valor%>">
                                    <a href="./index.jsp?page=area" class="btn btn-sm btn-danger">Cancelar</a>
                                </div>
                            </div>
                        </form>
                </div>
            </div>
            <!-- end row -->

        </div> <!-- container -->
