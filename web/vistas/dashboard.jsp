
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Resumen"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.VentaDAO"%>
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
        int atendidohoy = 0;
        int cantidadcomensal = 0;
        double ventames = 0;
        double ventahoy = 0;

        VentaDAO dao = new VentaDAO();
        List<Resumen> list = dao.Resumen();
        Iterator<Resumen> iter = list.iterator();
        Resumen r = null;
        while (iter.hasNext()) {
            r = iter.next();
            atendidohoy=r.getCAtendidodia();
            cantidadcomensal=r.getCantidadC();
            ventames=r.getVentames();
            ventahoy=r.getVentadia();
        }


    %>


    <div class="row">
        <div class="col-lg-6 col-xl-3">
            <div class="card bg-success">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col-8">

                            <h5 class="text-white" title="Pedidos del dia">Atendidos hoy</h5>
                            <h3 class="my-2 py-1 text-white"><%=atendidohoy%></h3>

                        </div>

                    </div> <!-- end row-->
                </div> <!-- end card-body -->
            </div> <!-- end card -->
        </div> <!-- end col -->

        <div class="col-lg-6 col-xl-3">
            <div class="card bg-primary">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col-8">
                            <h5 class="text-white" title="Venta del dia">Ventas del dia</h5>
                            <h3 class="my-2 py-1 text-white">S/<%=ventahoy%></h3>

                        </div>

                    </div> <!-- end row-->
                </div> <!-- end card-body -->
            </div> <!-- end card -->
        </div> <!-- end col -->

        <div class="col-lg-6 col-xl-3">
            <div class="card bg-warning">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col-8">
                            <h5 class="text-white" title="Cantidad comensales">Comensales</h5>
                            <h3 class="my-2 py-1 text-white"><%=cantidadcomensal%></h3>

                        </div>

                    </div> <!-- end row-->
                </div> <!-- end card-body -->
            </div> <!-- end card -->
        </div> <!-- end col -->

        <div class="col-lg-6 col-xl-3">
            <div class="card bg-danger">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col-8">
                            <h5 class="text-white" title="Atendidos mes">Venta del mes</h5>
                            <h3 class="my-2 py-1 text-white">S/<%=ventames%></h3>

                        </div>

                    </div> <!-- end row-->
                </div> <!-- end card-body -->
            </div> <!-- end card -->
        </div> <!-- end col -->
    </div>
    <!-- end row -->
</div> 