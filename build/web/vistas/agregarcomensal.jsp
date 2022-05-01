<%@page contentType="text/html" pageEncoding="UTF-8"%>

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

                                                   

                                                    <a href="./index.jsp?page=comensal" class="btn btn-sm btn-danger">Cancelar</a>

                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <!-- end row -->




                          
                    </div> <!-- container -->
