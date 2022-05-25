
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Familia"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.FamiliaDAO"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page import="Modelo.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Start Content-->
<div class="container-fluid">
    <%
        ProductoDAO dao = new ProductoDAO();
        String titulo = "Registrar nuevo producto";
        String Nombre = "";
        String Valor = "Guardar";
        int IdPro = 0, IdFam = 0;
        double Costo = 0, Precio = 0;
        if (request.getAttribute("idproducto") != null) {
            IdPro = Integer.parseInt((String) request.getAttribute("idproducto"));
            Producto p = (Producto) dao.list(IdPro);
            Nombre = p.getNomPro();
            IdFam = p.getIdFam();
            Costo = p.getCosto();
            Precio = p.getPrecio();
            Valor = "Actualizar";
            titulo = "Modificar producto";
        }
    %>
    <div class="row">
        <div class="col-xl-6">
            <div class="card">
                <div class="card-body">
                    <h4 class="header-title">Registrar nuevo producto</h4>

                    <form class="form-horizontal" method="post" action="ControladorProducto" enctype="multipart/form-data">
                        <input type="hidden" name="TxtId" value="<%=IdPro%>">
                        <div class="mb-3">
                            <label class="col-sm-6 control-label">Familia</label>
                            <select name="CboFamilia" class="form-select">
                                <%
                                    FamiliaDAO daf = new FamiliaDAO();
                                    List<Familia> list = daf.listar();
                                    Iterator<Familia> iter = list.iterator();
                                    Familia fa = null;
                                    String Select = "";
                                    while (iter.hasNext()) {
                                        fa = iter.next();
                                %>
                                <option value="<%=fa.getIdFam()%>" <%
                                    int _IdFam;
                                    Select = "";
                                    _IdFam = fa.getIdFam();

                                    if (_IdFam == IdFam) {
                                        Select = "selected";
                                    }
                                        %><%=Select%>><%=fa.getNomFam()%></option>
                                <%}%>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label class="col-sm-3 control-label">Descripcion</label>
                            <input type="text" name="TxtNombre" class="form-control" placeholder="Nombre" value="<%=Nombre%>" required>
                        </div>
                        <div class="mb-3">
                            <label class="col-sm-3 control-label">Costo</label>
                            <input type="number" name="TxtCosto" class="form-control" value="<%=Costo%>" placeholder="Costo" required>
                        </div>
                        <div class="mb-3">
                            <label class="col-sm-3 control-label">Precio</label>
                            <input type="number" name="TxtPrecio" class="form-control" value="<%=Precio%>" placeholder="Precio" required>
                        </div>
                        <div class="mb-3">
                            <label class="col-sm-3 control-label">Imagen</label>
                            <input type="file" accept="image/*"  name="foto" class="form-control" placeholder="Seleccione foto">
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">&nbsp;</label>
                            <div class="col-sm-6">
                                <input type="submit" name="accion" class="btn btn-sm btn-primary" value="<%=Valor%>">
                                <a href="./index.jsp?page=producto" class="btn btn-sm btn-danger">Cancelar</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- end row -->





        </div> <!-- container -->
