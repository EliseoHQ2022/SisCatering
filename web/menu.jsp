<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
   String TipoU = (String) request.getSession().getAttribute("TipoUsuario");
%>

<div class="leftside-menu">
    <a href="index.jsp" class="logo text-center logo-light">
        <a href="index.jsp?page=dashboard" class="logo text-center logo-light">
            <span class="logo-lg">
                <img src="./imagenes/logo.png" alt="" height="50">
            </span>
            <span class="logo-sm">
                <img src="./imagenes/logo.png" alt="" height="50">
            </span>
        </a>

        <!-- LOGO -->

        <a href="index.jsp" class="logo text-center logo-dark">

            <a href="index.jsp?page=dashboard" class="logo text-center logo-dark">

                <span class="logo-lg">
                    <img src="./imagenes/logo.png" alt="" height="50">
                </span>
                <span class="logo-sm">
                    <img src="./imagenes/logo.png" alt="" height="50">
                </span>
            </a>
            <div class="h-100" id="leftside-menu-container" data-simplebar>

                <!--- Sidemenu -->
                <ul class="side-nav">

                    <li class="side-nav-title side-nav-item">Navegación</li>

                    <li class="side-nav-item">
                        <a data-bs-toggle="collapse" href="#sidebarDashboards" aria-expanded="false" aria-controls="sidebarDashboards" class="side-nav-link">
                            <i class="uil-home-alt"></i>
                            <span> Mantenimiento </span>
                        </a>
                        <div class="collapse" id="sidebarDashboards">
                            <ul class="side-nav-second-level">
                                <%                                    if (TipoU.equalsIgnoreCase("A")) {
                                %>
                                <li>
                                    <a href="index.jsp?page=familia">Familia</a>
                                </li>
                                <li>
                                    <a href="index.jsp?page=producto">Productos</a>
                                </li>
                                <li>
                                    <a href="index.jsp?page=cargo">Cargos</a>
                                </li>
                                <li>
                                    <a href="index.jsp?page=area">Areas</a>

                                </li>
                                <%}%>
                                <li>

                                    <a href="index.jsp?page=comensal">Comensales</a>
                                </li>
                            </ul>
                        </div>
                    </li>

                    <li class="side-nav-item">
                        <a data-bs-toggle="collapse" href="#sidebarDashboards2" aria-expanded="false" aria-controls="sidebarDashboards2" class="side-nav-link">
                            <i class="uil-store"></i>
                            <span> Ventas </span>
                        </a>
                        <div class="collapse" id="sidebarDashboards2">
                            <ul class="side-nav-second-level">


                                <li>
                                    <a href="index.jsp?page=venta">Venta</a>

                                </li>

                            </ul>
                        </div>
                    </li>
                    <%                                    if (TipoU.equalsIgnoreCase("A")) {
                                %>
                    <li class="side-nav-item">
                        <a data-bs-toggle="collapse" href="#sidebarDashboards3" aria-expanded="false" aria-controls="sidebarDashboards3" class="side-nav-link">
                            <i class="uil-chart"></i>
                            <span> Reportes </span>
                        </a>
                        <div class="collapse" id="sidebarDashboards3">
                            <ul class="side-nav-second-level">

                                <li>
                                    <a href="index.jsp?page=reportecomensal">Ventas por comensal</a>
                                </li>
                                <li>
                                    <a href="index.jsp?page=reporteporfecha">Ventas por fecha</a>
                                </li>
                                <li>
                                    <a href="index.jsp?page=reporteproducto">Venta por producto</a>
                                </li>

                            </ul>
                        </div>
                    </li>

                    <li class="side-nav-item">
                        <a data-bs-toggle="collapse" href="#sidebarDashboards4" aria-expanded="false" aria-controls="sidebarDashboards3" class="side-nav-link">
                            <i class="uil-cog"></i>
                            <span> Seguridad </span>
                        </a>
                        <div class="collapse" id="sidebarDashboards4">
                            <ul class="side-nav-second-level">
                                <li>
                                    <a href="index.jsp?page=usuario">Usuarios</a>
                                </li>

                            </ul>
                        </div>
                    </li>
<%}%>
                </ul>



                <div class="clearfix"></div>

            </div>
            <!-- Sidebar -left -->

            </div>