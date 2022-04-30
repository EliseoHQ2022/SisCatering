
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
                    <h4 class="header-title">Reporte de consumo por fecha</h4>

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
                            <label class="form-label">Area</label>

                            <select name="lstestado" class="form-select">
                                <option value="T">Todos</option>
                                <option value="V">VENTAS</option>
                                
                            </select>
                        </div>
                         <div class="col-12">
                            <label class="form-label">Cargo</label>

                            <select name="lstestado" class="form-select">
                                <option value="T">Todos</option>
                                <option value="V">VENDEDOR</option>
                                
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
                                    <th>Nº Ticket</th>
                                    <th>Fecha</th>
                                    <th>DNI</th>
                                    <th>Comensal</th>
                                    <th>Servicio</th>
                                    <th>Importe</th>
                                    
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <td>0001</td>
                                    <td>30/04/2022</td>
                                    <td>46206480</td>
                                    <td>ELISEO HUAMAN QUISPE</td>
                                    <td>ALMUERZO</td>
                                    <td>10.00</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td colspan="4">Cantidad de registros 1</td>
                                    <td colspan="2" align="right">Total S/ 10.00</td>
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