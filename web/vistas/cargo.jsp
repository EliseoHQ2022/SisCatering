

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Start Content-->
                    <div class="container-fluid">
                        
                       

                       <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="header-title">Registro de cargos</h4>
                                    
                                   
                                    <a href="./index.jsp?page=agregarcargo" class="btn btn-primary btn-sm">Nuevo cargo</a>

                                    <table class="mb-0 table" id="mitabla">
                                        <thead>
                                            <tr>
                                                <th>Id</th>
                                                
                                                
                                                <th>Descripcion</th>
                                                
                                                                                               
                                                <th>Acciones</th>
                                            </tr>
                                        </thead>

                                        


                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                               
                                               
                                                <td>VENDEDOR</td>
                                               
                                               
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