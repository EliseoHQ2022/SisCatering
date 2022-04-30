
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container-fluid">
                        
                         <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <h4 class="page-title">Dashboard</h4>
                                </div>
                            </div>
                        </div>
                       
                         <%
            int atendidohoy=50;
            int cantidadcomensal=500;
            int atendidomes=2500;
            double ventahoy=300;
            %>


                        <div class="row">
                            <div class="col-lg-6 col-xl-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row align-items-center">
                                            <div class="col-6">

                                                <h5 class="text-muted fw-normal mt-0 text-truncate" title="Pedidos del dia">Atendidos hoy</h5>
                                                <h3 class="my-2 py-1"><%=atendidohoy%></h3>
                                                
                                            </div>
                                            <div class="col-6">
                                                <div class="text-end">
                                                    <div id="campaign-sent-chart" data-colors="#727cf5"></div>
                                                </div>
                                            </div>
                                        </div> <!-- end row-->
                                    </div> <!-- end card-body -->
                                </div> <!-- end card -->
                            </div> <!-- end col -->
        
                            <div class="col-lg-6 col-xl-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row align-items-center">
                                            <div class="col-8">
                                                <h5 class="text-muted fw-normal mt-0 text-truncate" title="Venta del dia">Ventas hoy</h5>
                                                 <h3 class="my-2 py-1">S/<%=ventahoy%></h3>
                                               
                                            </div>
                                            <div class="col-6">
                                                <div class="text-end">
                                                    <div id="new-leads-chart" data-colors="#0acf97"></div>
                                                </div>
                                            </div>
                                        </div> <!-- end row-->
                                    </div> <!-- end card-body -->
                                </div> <!-- end card -->
                            </div> <!-- end col -->

                            <div class="col-lg-6 col-xl-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row align-items-center">
                                            <div class="col-6">
                                                <h5 class="text-muted fw-normal mt-0 text-truncate" title="Cantidad comensales">Comensales</h5>
                                                <h3 class="my-2 py-1"><%=cantidadcomensal%></h3>
                                                
                                            </div>
                                            <div class="col-6">
                                                <div class="text-end">
                                                    <div id="deals-chart" data-colors="#727cf5"></div>
                                                </div>
                                            </div>
                                        </div> <!-- end row-->
                                    </div> <!-- end card-body -->
                                </div> <!-- end card -->
                            </div> <!-- end col -->

                            <div class="col-lg-6 col-xl-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row align-items-center">
                                            <div class="col-6">
                                                <h5 class="text-muted fw-normal mt-0 text-truncate" title="Atendidos mes">Atendido mes</h5>
                                                <h3 class="my-2 py-1"><%=atendidomes%></h3>
                                                
                                            </div>
                                            <div class="col-6">
                                                <div class="text-end">
                                                    <div id="booked-revenue-chart" data-colors="#0acf97"></div>
                                                </div>
                                            </div>
                                        </div> <!-- end row-->
                                    </div> <!-- end card-body -->
                                </div> <!-- end card -->
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->

                        


                        
                        
                    </div> 