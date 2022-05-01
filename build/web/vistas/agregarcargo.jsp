

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container-fluid">

    <div class="row">
        <div class="col-xl-6">
            <div class="card">
                <div class="card-body">
                    <h4 class="header-title">Registrar nuevo cargo</h4>

                    <form class="form-horizontal">


                        <form class="form-horizontal" method="post" enctype="multipart/form-data">



                            <div class="mb-3">
                                <label class="col-sm-3 control-label">Descripcion</label>

                                <input type="text" name="nombre" class="form-control" placeholder="Nombre" required>

                            </div>



                            <div class="form-group">
                                <label class="col-sm-3 control-label">&nbsp;</label>
                                <div class="col-sm-6">
                                    <input type="submit" name="accion" class="btn btn-sm btn-primary" value="Guardar">
                                    <a href="./index.jsp?page=cargo" class="btn btn-sm btn-danger">Cancelar</a>
                                </div>
                            </div>
                        </form>
                </div>
            </div>
            <!-- end row -->





        </div> <!-- container -->