
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="navbar-custom">
                        <ul class="list-unstyled topbar-menu float-end mb-0">
                            
                            <li class="dropdown notification-list">
                                <a class="nav-link dropdown-toggle nav-user arrow-none me-0" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false"
                                    aria-expanded="false">
                                    <span class="account-user-avatar"> 
                                        <img src="./imagenes/usuario.png" alt="user-image" class="rounded-circle">
                                    </span>
                                    <span>
                                        <span class="account-user-name">${tipou}</span>
                                        <span class="account-user-name">${nombre}</span>
                                    </span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated topbar-dropdown-menu profile-dropdown">
                                                                    
                                   

                                    <!-- item-->

                                    <a href="" class="dropdown-item notify-item">

                                    <a href="ControladorUsuario?accion=cerrar" class="dropdown-item notify-item">

                                        <i class="uil-arrow-circle-left"></i>
                                        <span>Salir</span>
                                    </a>
                                </div>
                            </li>

                        </ul>
                        <button class="button-menu-mobile open-left">
                            <i class="uil-left-indent"></i>
                        </button>
                        
                    </div>