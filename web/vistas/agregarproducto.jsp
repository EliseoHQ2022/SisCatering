
<%@page contentType="text/html" pageEncoding="UTF-8"%>

                    <!-- Start Content-->
                    <div class="container-fluid">



                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Registrar nuevo producto</h4>
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

                                                       

                                                        <a href="./index.jsp?page=producto" class="btn btn-sm btn-danger">Cancelar</a>

                                                    </div>
                                                </div>
                                            </form>
                                    </div>
                                </div>
                                <!-- end row -->





                            </div> <!-- container -->
