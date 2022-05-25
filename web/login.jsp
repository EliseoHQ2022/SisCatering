

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es-PE">
    <head>
        <meta charset="utf-8" />
        <title>Ingreso a sistema</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- App favicon -->
        <link rel="shortcut icon" href="imagenes/icon.ico">

        <!-- App css -->
        <link href="css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="css/app.min.css" rel="stylesheet" type="text/css" id="light-style" />
        <link href="css/app-dark.min.css" rel="stylesheet" type="text/css" id="dark-style" />

    </head>

    <body class="loading" >
        <!-- Begin page -->

        <div class="account-pages pt-2 pt-sm-5 pb-4 pb-sm-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xxl-4 col-lg-5">
                        <div class="card">

                            <!-- Logo -->
                            <div class="card-header pt-4 pb-4 text-center bg-primary">
                                <a href="#">
                                    <span><img src="imagenes/logo.png" alt="" height="50"></span>
                                </a>
                            </div>

                            <div class="card-body p-4">

                                <div class="text-center w-75 m-auto">
                                    <h4 class="text-dark-50 text-center pb-0 fw-bold">Iniciar Session</h4>
                                    <p class="text-muted mb-4">Ingrese su usuario y contraseña</p>
                                </div>

                                <form action="ControladorUsuario" method="post">

                                    <div class="mb-3">
                                        <label for="emailaddress" class="form-label">usuario</label>
                                        <input class="form-control" name="usuario" required="" placeholder="ingrese su usuario">
                                    </div>

                                    <div class="mb-3">

                                        <label for="password" class="form-label">Contraseña</label>
                                        <div class="input-group input-group-merge">
                                            <input type="password" name="password" class="form-control" placeholder="Ingrese su contraseña">

                                        </div>
                                    </div>



                                    <div class="mb-3 mb-0 text-center">
                                        <button class="btn btn-primary" type="submit" name="accion" value="ingresar">Ingresar </button>
                                    </div>

                                </form>
                                <%
                                    if (request.getAttribute("mensaje") != null) {
                                        String msg = request.getAttribute("mensaje").toString();
                                %>
                                <div class="alert alert-danger" role="alert">
                                    <%=msg%>!
                                </div>
                                <%
                                    }
                                %>
                            </div> <!-- end card-body -->
                        </div>
                        <!-- end card -->


                        <!-- end row -->

                    </div> <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
        <!-- END wrapper -->

        <footer class="footer footer-alt">
            <script>document.write(new Date().getFullYear())</script> © Vicky SAC
        </footer>


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
        <script src="js/pages/demo.dashboard-crm.js"></script>
        <!-- end demo js-->
    </body>
</html>