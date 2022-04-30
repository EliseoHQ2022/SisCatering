<%@page contentType="text/html" pageEncoding="UTF-8"%>
<<<<<<< HEAD
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
=======

>>>>>>> ff43b59 (Ultima actualizacion)

                    <!-- Start Content-->
                    <div class="container-fluid">



                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Registrar nuevo comensal</h4>

                                        <form class="form-horizontal">


                                            <div class="mb-3">
                                                <label class="col-sm-6 control-label">Nº Documento identidad</label>

                                                <input type="text" name="dni" class="form-control" placeholder="Ingrese DNI u otro documento">

                                            </div>

                                            <div class="mb-3">
                                                <label class="col-sm-3 control-label">Nº fotocheck</label>

                                                <input type="text" name="fotocheck" class="form-control" placeholder="Ingrese nº fotocheck">

                                            </div>

                                            <div class="mb-3">
                                                <label class="col-sm-3 control-label">Nombre</label>

                                                <input type="text" name="nombre" class="form-control" placeholder="Nombre" required>

                                            </div>

                                            <div class="mb-3">
                                                <label class="col-sm-3 control-label">Cargo</label>

                                                <select name="cargo" class="form-select">

                                                </select>

                                            </div>
                                            <div class="mb-3">
                                                <label class="col-sm-3 control-label">Area</label>

                                                <select name="area" class="form-select">

                                                </select>

                                            </div>
                                            <div class="mb-3">
                                                <label class="col-sm-6 control-label">Fecha de nacimiento</label>
                                                <input type="text" class="form-control date" name="fechan" data-toggle="date-picker" data-single-date-picker="true" value="">




                                            </div>

                                            <div class="mb-3">
                                                <label class="col-sm-3 control-label">Sexo</label>

                                                <select name="sexo" class="form-select">
                                                    <option value="M">MASCULINO</option>
                                                    <option value="F">FEMENINO</option>
                                                </select>

                                            </div>

                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">&nbsp;</label>
                                                <div class="col-sm-6">
                                                    <input type="submit" name="accion" class="btn btn-sm btn-primary" value="Guardar">
<<<<<<< HEAD
                                                    <a href="ControladorComensal?accion=listar" class="btn btn-sm btn-danger">Cancelar</a>
=======
                                                    <a href="./index.jsp?page=comensal" class="btn btn-sm btn-danger">Cancelar</a>
>>>>>>> ff43b59 (Ultima actualizacion)
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <!-- end row -->




                          
                    </div> <!-- container -->

<<<<<<< HEAD
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
=======
              
>>>>>>> ff43b59 (Ultima actualizacion)
