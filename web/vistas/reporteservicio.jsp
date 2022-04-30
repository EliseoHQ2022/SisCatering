

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script type="text/javascript">
           $(document).ready(function() {
    $('#mitabla').DataTable();
});
 </script>
<div class="container-fluid">



    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="header-title">Reporte de de venta por servicio</h4>

                    <form class="row row-cols-lg-auto g-3 align-items-center" method="POST" action="">
                        <div class="col-12">
                            <label class="form-label">Desde</label>
                            <input type="text" class="form-control date" name="fechadesde" data-toggle="date-picker" data-single-date-picker="true" value="<?php print $vdesde;?>">
                        </div>
                        <div class="col-12">
                            <label class="form-label">Hasta</label>
                            <input type="text" class="form-control date" name="fechahasta" data-toggle="date-picker" data-single-date-picker="true" value="<?php print $vhasta;?>">
                        </div>
                        <div class="col-12">
                            <label class="form-label">Servicio</label>

                            <select name="lstestado" class="form-select">
                                <option value="T">Todos</option>
                                <option value="V">ALMUERZO</option>
                                
                            </select>
                        </div>
                        <div class="col-12">
                            <button type="submit" class="btn btn-primary">Consultar</button>
                        </div>
                    </form>
                    <br>
                    <div class="table-responsive">
                        <table class="mb-0 table" id="mitabla">
                            <thead>
                                <tr>
                                    <th>Fecha</th>
                                    <th>Servicio</th>
                                    <th>Cantidad</th>
                                    <th>Importe</th>
                                    
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <td>29/04/2022</td>
                                                                       
                                    <td>ALMUERZO</td>
                                    <td>10</td>
                                    <td>100.00</td>
                                </tr>
                                <tr>
                                    <td>30/04/2022</td>                             
                                    <td>ALMUERZO</td>
                                    <td>15</td>
                                    <td>150.00</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td colspan="2">Cantidad de registros 2</td>
                                    <td colspan="2" align="right">Total S/ 250.00</td>
                                </tr>
                            </tfoot>

                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- end row -->
</div> <!-- container -->