
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar comensal</title>
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
                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Registrar nuevo comensal</h4>

                                        <form class="form-horizontal" enctype="multipart/form-data">


                                            <form class="form-horizontal" method="post" enctype="multipart/form-data">

                                                <div class="mb-3">
                                                    <label class="col-sm-6 control-label">Familia</label>

                                                    <select name="familia" class="form-select">

                                                        

                                                        <option value="m">MENU</option>

                                                        
                                                    </select>

                                                </div>

                                                <div class="mb-3">
                                                    <label class="col-sm-3 control-label">Descripcion</label>

                                                    <input type="text" name="nombre" class="form-control" placeholder="Nombre" required>

                                                </div>

                                                <div class="mb-3">
                                                    <label class="col-sm-3 control-label">Costo</label>

                                                    <input type="number" name="precio" class="form-control" placeholder="Costo" required>

                                                </div>

                                                <div class="mb-3">
                                                    <label class="col-sm-3 control-label">Precio</label>

                                                    <input type="number" name="precio" class="form-control" placeholder="Precio" required>

                                                </div>

                                                

                                                <div class="mb-3">
                                                    <label class="col-sm-3 control-label">Imagen</label>

                                                    <input type="file" accept="image/*"  name="foto" class="form-control" placeholder="Seleccione foto">

                                                </div>

                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">&nbsp;</label>
                                                    <div class="col-sm-6">
                                                        <input type="submit" name="accion" class="btn btn-sm btn-primary" value="Guardar">
                                                        <a href="ControladorProducto?accion=listar" class="btn btn-sm btn-danger">Cancelar</a>
                                                    </div>
                                                </div>
                                            </form>
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
