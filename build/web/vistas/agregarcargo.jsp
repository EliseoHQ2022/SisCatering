

<%@page import="Modelo.Cargo"%>
<%@page import="ModeloDAO.CargoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container-fluid">
<%
        CargoDAO dao=new CargoDAO();
        String titulo="Registrar nuevo cargo";
        String Nombre="";
        String Valor="Guardar";
        int IdCar=0;
        if (request.getAttribute("idcargo")!=null){
            IdCar =Integer.parseInt((String)request.getAttribute("idcargo"));
            Cargo c=(Cargo)dao.list(IdCar);
            Nombre=c.getNomCar();
            Valor="Actualizar";
            titulo="Modificar cargo";
        }
    %>
    <div class="row">
        <div class="col-xl-6">
            <div class="card">
                <div class="card-body">
                    <h4 class="header-title">Registrar nuevo cargo</h4>
                    
                        <form class="form-horizontal" method="post" action="ControladorCargo">
                            <div class="mb-3">
                                <input type="hidden" name="TxtId" value="<%=IdCar%>">
                                <label class="col-sm-3 control-label">Descripcion</label>
                                <input type="text" name="TxtNombre" class="form-control" placeholder="Nombre" value="<%=Nombre%>" required>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">&nbsp;</label>
                                <div class="col-sm-6">
                                    <input type="submit" name="accion" class="btn btn-sm btn-primary" value="<%=Valor%>">
                                    <a href="./index.jsp?page=cargo" class="btn btn-sm btn-danger">Cancelar</a>
                                </div>
                            </div>
                        </form>
                </div>
            </div>
            <!-- end row -->





        </div> <!-- container -->