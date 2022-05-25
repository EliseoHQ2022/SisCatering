
<%@page import="Modelo.Producto"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script>
    $(document).ready(function () {

        $('#fotocheck').trigger('focus');

    });
</script>
<div class="container-fluid">

    <%
        ProductoDAO dao = new ProductoDAO();

        String Nombre = "";
        String msgerror = "", msgok = "";
        int IdPro = 0, IdFam = 0;
        double Costo = 0, Precio = 0;
        try {
            if (request.getAttribute("idproducto") != null) {
                IdPro = Integer.parseInt(request.getAttribute("idproducto").toString());
                Producto p = (Producto) dao.list(IdPro);
                Nombre = p.getNomPro();
                IdFam = p.getIdFam();
                Costo = p.getCosto();
                Precio = p.getPrecio();

            }
            if (request.getAttribute("error") != null) {
                msgerror = (String) request.getAttribute("error");
            }
            if (request.getAttribute("correcto") != null) {
                msgok = (String) request.getAttribute("correcto");
            }
        } catch (Exception e) {
            System.out.println("Error"+e + " id"+IdPro);
        }


    %>

    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h1 class="header-title">Registro de consumo de <%=Nombre%></h1>
                    <div class="card-header pt-4 pb-4 text-center bg-primary">
                        <a href="#">
                            <span><img src="imagenes/logo.png" alt="" height="50"></span>
                            <br>
                            <span><img src="imagenes/lector.gif" alt="" height="50"></span>
                        </a>
                    </div> 

                    <form class="form-horizontal" method="post" action="ControladorVenta">

                        <input type="hidden" name="TxtId" value="<%=IdPro%>">
                        <div class="mb-3">
                            <label class="col-lg-12 control-label">Pase su fotocheck por la lectora de codigo de barras</label>
                            <input type="text" id="fotocheck" name="TxtFotocheck" class="form-control" autoComplete="off" placeholder="Pase su fotocheck" required autofocus>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">&nbsp;</label>
                            <div class="col-sm-6">
                                <input type="submit" name="accion" class="btn btn-sm btn-primary" value="Registrar">
                            </div>
                        </div>
                    </form>
                    <br>
                    <%
                        if (msgerror.length() > 0) {
                    %>
                    <div class="alert alert-danger" role="alert">
                        <%=msgerror%>!
                    </div>
                    <%
                        }
                    %>

                    <%
                        if (msgok.length() > 0) {
                    %>
                    <div class="alert alert-success" role="alert">
                        <%=msgok%>!
                    </div>
                    <%

                        }
                    %>

                </div>
            </div>
        </div>
    </div>
    <!-- end row -->






</div> <!-- container -->