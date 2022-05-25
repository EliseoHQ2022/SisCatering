
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Producto"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!-- Start Content-->
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="header-title">Registro de productos</h4>
                    <a href="./index.jsp?page=agregarproducto" class="btn btn-primary btn-sm">Nuevo producto</a>
                    <div class="table-responsive">
                        <table class="mb-0 table" >
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Foto</th>
                                    <th>Familia</th>
                                    <th>Descripcion</th>
                                    <th>Costo</th>
                                    <th>Precio</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    ProductoDAO dao = new ProductoDAO();
                                    List<Producto> list = dao.listar();
                                    Iterator<Producto> iter = list.iterator();
                                    Producto pr = null;
                                    while (iter.hasNext()) {
                                        pr = iter.next();

                                %>

                                <tr>
                                    <th scope="row"><%=pr.getIdPro()%></th>
                                    <td><img src="./imagenes/productos/<%=pr.getImagen()%>" width="50px"></td>
                                    <td><%=pr.getNomFam()%></td>
                                    <td><%=pr.getNomPro()%></td>
                                    <td><%=pr.getCosto()%></td>
                                    <td><%=pr.getPrecio()%></td>
                                    <td>
                                        <a href="ControladorProducto?accion=editar&id=<%=pr.getIdPro()%>" title="Editar datos" class="btn btn-primary btn-sm"><span class="uil-edit" aria-hidden="true"></span></a>
                                        <a href="ControladorProducto?accion=eliminar&id=<%=pr.getIdPro()%>" title="Eliminar" onclick="return confirm('Esta seguro de eliminar?')" class="btn btn-danger btn-sm"><span class="uil-trash" aria-hidden="true"></span></a>
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


