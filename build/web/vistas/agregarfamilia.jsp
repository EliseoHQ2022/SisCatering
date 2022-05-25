
<%@page import="Modelo.Familia"%>
<%@page import="ModeloDAO.FamiliaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container-fluid">
<%
        FamiliaDAO dao=new FamiliaDAO();
        String titulo="Registrar nueva familia";
        String Nombre="";
        String Valor="Guardar";
        int IdFam=0;
        if (request.getAttribute("idfamilia")!=null){
            IdFam =Integer.parseInt((String)request.getAttribute("idfamilia"));
            Familia f=(Familia)dao.list(IdFam);
            Nombre=f.getNomFam();
            Valor="Actualizar";
            titulo="Modificar familia";
        }
    %>
    <div class="row">
        <div class="col-xl-6">
            <div class="card">
                <div class="card-body">
                    <h4 class="header-title">Registrar nueva familia</h4>

                    <form class="form-horizontal" method="post" action="ControladorFamilia">
                            <div class="mb-3">
                                <input type="hidden" name="TxtId" value="<%=IdFam%>">
                                <label class="col-sm-3 control-label">Descripcion</label>
                                <input type="text" name="TxtNombre" class="form-control" placeholder="Nombre" value="<%=Nombre%>" required>

                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">&nbsp;</label>
                                <div class="col-sm-6">
                                    <input type="submit" name="accion" class="btn btn-sm btn-primary" value="<%=Valor%>">
                                    <a href="./index.jsp?page=familia" class="btn btn-sm btn-danger">Cancelar</a>
                                </div>
                            </div>
                        </form>
                </div>
            </div>
            <!-- end row -->





        </div> <!-- container -->