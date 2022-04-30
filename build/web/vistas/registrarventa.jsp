
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script>
$(document).ready(function() {
  
    $('#fotocheck').trigger('focus');
  
});
</script>
<div class="container-fluid">



    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h1 class="header-title">Registro de consumo</h1>
                    <div class="card-header pt-4 pb-4 text-center bg-primary">
                        <a href="#">
                            <span><img src="imagenes/logo.png" alt="" height="50"></span>
                            <br>
                             <span><img src="imagenes/lector.gif" alt="" height="50"></span>
                        </a>
                    </div> 

                    <form class="form-horizontal">
                

                           

                            <div class="mb-3">
                                <label class="col-lg-12 control-label">Pase su fotocheck por la lectora de codigo de barras</label>

                                <input type="text" id="fotocheck" name="fotocheck" class="form-control" autoComplete="off" placeholder="Pase su fotocheck" required autofocus>

                            </div>

                                                   



                           

                            <div class="form-group">
                                <label class="col-sm-3 control-label">&nbsp;</label>
                                <div class="col-sm-6">
                                    <input type="submit" name="accion" class="btn btn-sm btn-primary" value="Registrar">
                                    
                                </div>
                            </div>
                        </form>




                </div>
            </div>
        </div>
    </div>
    <!-- end row -->






</div> <!-- container -->