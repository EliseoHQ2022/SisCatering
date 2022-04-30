
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SisCatering - Gestion de comensales</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
       
        <!-- App favicon -->
        <link rel="shortcut icon" href="imagenes/icon.ico">

        <!-- App css -->
        <link href="css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="css/app.min.css" rel="stylesheet" type="text/css" id="light-style" />
        <link href="css/app-dark.min.css" rel="stylesheet" type="text/css" id="dark-style" />
    </head>
    <body class="loading" data-layout-config='{"leftSideBarTheme":"dark","layoutBoxed":false, "leftSidebarCondensed":false, "leftSidebarScrollable":false,"darkMode":false, "showRightSidebarOnStart": true}'>
       
        
         <div class="wrapper">
            <!-- ========== Left Sidebar Start ========== -->
                  <%@ include file="menu.jsp" %>
            <!-- Left Sidebar End -->

            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

            <div class="content-page">
                <div class="content">
                    <!-- Topbar Start -->
                     <%@ include file="cabecera.jsp" %>
                    <!-- end Topbar -->

                    <!-- Start Content-->

                   
<<<<<<< HEAD

                    <div class="container-fluid">
                        
                         <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <h4 class="page-title">Dashboard</h4>
                                </div>
                            </div>
                        </div>
                       
                         <%
            int atendidohoy=50;
            int cantidadcomensal=500;
            int atendidomes=2500;
            double ventahoy=300;
            %>


                        <div class="row">
                            <div class="col-lg-6 col-xl-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row align-items-center">
                                            <div class="col-6">

                                                <h5 class="text-muted fw-normal mt-0 text-truncate" title="Pedidos del dia">Atendidos hoy</h5>
                                                <h3 class="my-2 py-1"><%=atendidohoy%></h3>
                                                
                                            </div>
                                            <div class="col-6">
                                                <div class="text-end">
                                                    <div id="campaign-sent-chart" data-colors="#727cf5"></div>
                                                </div>
                                            </div>
                                        </div> <!-- end row-->
                                    </div> <!-- end card-body -->
                                </div> <!-- end card -->
                            </div> <!-- end col -->
        
                            <div class="col-lg-6 col-xl-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row align-items-center">
                                            <div class="col-8">
                                                <h5 class="text-muted fw-normal mt-0 text-truncate" title="Venta del dia">Ventas hoy</h5>
                                                 <h3 class="my-2 py-1">S/<%=ventahoy%></h3>
                                               
                                            </div>
                                            <div class="col-6">
                                                <div class="text-end">
                                                    <div id="new-leads-chart" data-colors="#0acf97"></div>
                                                </div>
                                            </div>
                                        </div> <!-- end row-->
                                    </div> <!-- end card-body -->
                                </div> <!-- end card -->
                            </div> <!-- end col -->

                            <div class="col-lg-6 col-xl-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row align-items-center">
                                            <div class="col-6">
                                                <h5 class="text-muted fw-normal mt-0 text-truncate" title="Cantidad comensales">Comensales</h5>
                                                <h3 class="my-2 py-1"><%=cantidadcomensal%></h3>
                                                
                                            </div>
                                            <div class="col-6">
                                                <div class="text-end">
                                                    <div id="deals-chart" data-colors="#727cf5"></div>
                                                </div>
                                            </div>
                                        </div> <!-- end row-->
                                    </div> <!-- end card-body -->
                                </div> <!-- end card -->
                            </div> <!-- end col -->

                            <div class="col-lg-6 col-xl-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row align-items-center">
                                            <div class="col-6">
                                                <h5 class="text-muted fw-normal mt-0 text-truncate" title="Atendidos mes">Atendido mes</h5>
                                                <h3 class="my-2 py-1"><%=atendidomes%></h3>
                                                
                                            </div>
                                            <div class="col-6">
                                                <div class="text-end">
                                                    <div id="booked-revenue-chart" data-colors="#0acf97"></div>
                                                </div>
                                            </div>
                                        </div> <!-- end row-->
                                    </div> <!-- end card-body -->
                                </div> <!-- end card -->
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->

                        


                        
                        
                    </div> <!-- container -->
=======
                    <jsp:include page="contenido.jsp"/>
                    <!-- container -->
>>>>>>> ff43b59 (Ultima actualizacion)

                </div> <!-- content -->

                <!-- Footer Start -->
                <footer class="footer">
                   <%@ include file="piepagina.jsp" %>
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
        <script src="js/vendor.min.js"></script>
        <script src="js/app.min.js"></script>

        <!-- Apex js -->
        <script src="js/vendor/apexcharts.min.js"></script>

        <!-- Todo js -->
        <script src="js/ui/component.todo.js"></script>

        <!-- demo app -->
<<<<<<< HEAD
        <script src="js/pages/demo.dashboard-crm.js"></script>
=======
        <script src="js/demo.dashboard-crm.js"></script>
>>>>>>> ff43b59 (Ultima actualizacion)
        <!-- end demo js-->
    </body>
</html>
