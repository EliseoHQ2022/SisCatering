
<%@page contentType="text/html" pageEncoding="UTF-8"%>


                    <!-- Start Content-->
                    <div class="container-fluid">
                        
                       

                       <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="header-title">Registro de productos</h4>
                                    
                                   

                                    

                                    <a href="./index.jsp?page=agregarproducto" class="btn btn-primary btn-sm">Nuevo producto</a>


                                    <table class="mb-0 table" id="mitabla">
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
                                            <tr>
                                                <th scope="row">1</th>
                                                <td><img src="./imagenes/productos/almuerzo.jpg" width="50px"></td>
                                                <td>MENU</td>
                                               
                                                <td>ALMUERZO</td>
                                                <td>3.00</td>
                                                <td>9.00</td>
                                               
                                                <td>

                                <a href="ControladorProducto?accion=editar&id=1" title="Editar datos" class="btn btn-primary btn-sm"><span class="uil-edit" aria-hidden="true"></span></a>
                                <a href="ControladorProducto?accion=eliminar&id=1" title="Eliminar" onclick="return confirm('Esta seguro de eliminar?')" class="btn btn-danger btn-sm"><span class="uil-trash" aria-hidden="true"></span></a>
                            </td>
                                            </tr>
                                           
                                           
                                        </tbody>
                                         
                                      
                                    </table>

                                <label class="col-sm-6 control-label" id="contador">Cantidad de registros 1  </label>
                                </div>
                            </div>
                        </div>
                    </div>
                        <!-- end row -->

                        


                        
                        
                    </div> <!-- container -->


              