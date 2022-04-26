
<%@page import="Modelo.Comensal"%>
<%@page import="ModeloDAO.ComensalDAO"%>
<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Registro de comensales</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="imagenes/icon.ico">

        <!-- App css -->
        <link href="./css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="./css/app.min.css" rel="stylesheet" type="text/css" id="light-style" />
        <link href="./css/app-dark.min.css" rel="stylesheet" type="text/css" id="dark-style" />
    </head>
    <body class="loading" data-layout-config='{"leftSideBarTheme":"dark","layoutBoxed":false, "leftSidebarCondensed":false, "leftSidebarScrollable":false,"darkMode":false, "showRightSidebarOnStart": true}'>
        <!-- Begin page -->
        <div class="wrapper">
            <!-- ========== Left Sidebar Start ========== -->
            <%@ include file="../menu.jsp" %>
            <!-- Left Sidebar End -->

            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

            <div class="content-page">
                <div class="content">
                    <!-- Topbar Start -->
                     <%@ include file="../cabecera.jsp" %>
                    <!-- end Topbar -->

                    <!-- Start Content-->
                    <div class="container-fluid">
                        
                       

                       <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="header-title">Registro de comensales</h4>
                                    
                                    


                                    <a href="ControladorComensal?accion=agregar" class="btn btn-primary btn-sm">Nuevo comensal</a>

                                    <table class="mb-0 table" id="mitabla">
                                        <thead>
                                            <tr>
                                                <th>Id</th>
                                                <th>DNI</th>
                                                <th>Fotocheck</th>
                                                <th>Nombre</th>
                                                <th>Cargo</th>
                                                <th>Area</th>
                                                <th>Fecha nac.</th>
                                                <th>Sexo</th>
                                                
                                                <th>Acciones</th>
                                            </tr>
                                        </thead>

                                        <%
                                            ComensalDAO dao=new ComensalDAO();
                                            List<Comensal>list=dao.listar();
                                            Iterator<Comensal>iter=list.iterator();
                                            Comensal com=null;
                                            while (iter.hasNext()){
                                            com=iter.next();
                                            
                                            
                                        %>


                                        <tbody>
                                            <tr>
                                                <th scope="row"><%=com.getIdCom()%></th>
                                                <td><%=com.getDNI()%></td>
                                                <td><%=com.getFotocheck()%></td>
                                                <td><%=com.getNombre()%></td>
                                                <td><%=com.getCargo()%></td>
                                                <td><%=com.getArea()%></td>
                                                <td><%=com.getFechaN()%></td>
                                                 <td><%=com.getSexo()%></td>
                                                <td>

                                <a href="ControladorComensal?accion=editar&id=<%=com.getIdCom()%>" title="Editar datos" class="btn btn-primary btn-sm"><span class="uil-edit" aria-hidden="true"></span></a>
                                <a href="ControladorComensal?accion=eliminar&id=<%=com.getIdCom()%>" title="Eliminar" onclick="return confirm('Esta seguro de eliminar?')" class="btn btn-danger btn-sm"><span class="uil-trash" aria-hidden="true"></span></a>
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

                </div> <!-- content -->

                <!-- Footer Start -->
                <footer class="footer">
                     <%@ include file="../piepagina.jsp" %>
                </footer>
                <!-- end Footer -->

            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->


        </div>
        <!-- END wrapper -->


       
        <div class="rightbar-overlay"></div>
        <!-- /End-bar -->


        <!-- bundle -->
        <script src="./js/vendor.min.js"></script>
        <script src="./js/app.min.js"></script>
   

       
        <!-- demo app -->
        <script src="./js/pages/demo.dashboard-crm.js"></script>
        <!-- end demo js-->
    </body>
</html>
