
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

            
                    <jsp:include page="contenido.jsp"/>
                    <!-- container -->

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

        <script src="js/pages/demo.dashboard-crm.js"></script>

        <script src="js/demo.dashboard-crm.js"></script>

        <!-- end demo js-->
    </body>
</html>
