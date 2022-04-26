<div class="leftside-menu">
    
                <!-- LOGO -->
                <a href="index.jsp" class="logo text-center logo-light">
                    <span class="logo-lg">
                        <img src="./imagenes/logo.png" alt="" height="50">
                    </span>
                    <span class="logo-sm">
                        <img src="./imagenes/logo.png" alt="" height="50">
                    </span>
                </a>

                <!-- LOGO -->
                <a href="index.jsp" class="logo text-center logo-dark">
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

                        <li class="side-nav-title side-nav-item">Navegaci�n</li>

                        <li class="side-nav-item">
                            <a data-bs-toggle="collapse" href="#sidebarDashboards" aria-expanded="false" aria-controls="sidebarDashboards" class="side-nav-link">
                                <i class="uil-home-alt"></i>
                                <span> Mantenimiento </span>
                            </a>
                            <div class="collapse" id="sidebarDashboards">
                                <ul class="side-nav-second-level">
                                    <li>
                                        <a href="ControladorProducto?accion=listar">Productos</a>
                                    </li>
                                   <li>
                                        <a href="cargo.jps">Cargos</a>
                                    </li>
                                    <li>
                                        <a href="areas.jps">Areas</a>
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
                                        <a href="ControladorComensal?accion=listar">Comensales</a>
                                    </li>
                                    <li>
                                        <a href="venta.jsp">Venta</a>
                                    </li>
                                    
                                </ul>
                            </div>
                        </li>

                        <li class="side-nav-item">
                            <a data-bs-toggle="collapse" href="#sidebarDashboards3" aria-expanded="false" aria-controls="sidebarDashboards3" class="side-nav-link">
                                <i class="uil-chart"></i>
                                <span> Reportes </span>
                            </a>
                            <div class="collapse" id="sidebarDashboards3">
                                <ul class="side-nav-second-level">
                                    <li>
                                        <a href="reportepedido.php">Ventas por comensal</a>
                                    </li>
                                    <li>
                                        <a href="productosvendidos.php">Venta por producto</a>
                                    </li>
                                    
                                </ul>
                            </div>
                        </li>

                    </ul>

                  

                    <div class="clearfix"></div>

                </div>
                <!-- Sidebar -left -->

            </div>