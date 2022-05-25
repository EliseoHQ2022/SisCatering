<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="Modelo.Area"%>
<%@page import="ModeloDAO.AreaDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Cargo"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.CargoDAO"%>
<%@page import="Modelo.Comensal"%>
<%@page import="ModeloDAO.ComensalDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Start Content-->
<div class="container-fluid">
    <%
        ComensalDAO dao = new ComensalDAO();
        String titulo = "Registrar nuevo comensal";
        String Nombre = "", DNI = "", Fotocheck = "", Sexo = "";
        String FechaN="";
        String Valor = "Guardar";
        String SelecM = "", SelecF = "";
        int IdCom = 0, IdCar = 0, IdArea = 0;
        if (request.getAttribute("idcomensal") != null) {
            IdCom = Integer.parseInt((String) request.getAttribute("idcomensal"));
            Comensal c = (Comensal) dao.list(IdCom);
            Nombre = c.getNombre();
            DNI = c.getDNI();
            Fotocheck = c.getFotocheck();
            
            DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            DateFormat formatters = new SimpleDateFormat("yyyy-MM-dd");
            Date Fecha = formatter.parse(c.getFechaN());
            FechaN=formatters.format(Fecha);
            System.out.println("Fecha:"+FechaN);
            /*System.out.println("Fecha "+FechaN);
            FechaN=c.getFechaN();
            System.out.println("Fecha "+FechaN);*/
            Sexo = c.getSexo();
            IdCar = c.getIdCar();
            IdArea = c.getIdArea();
            Valor = "Actualizar";
            titulo = "Modificar comensal";
            if (Sexo.equalsIgnoreCase("M")) {
                SelecM = "selected";
            } else {
                SelecF = "selected";
            }

        }
    %>
    <div class="row">
        <div class="col-xl-6">
            <div class="card">
                <div class="card-body">
                    <h4 class="header-title">Registrar nuevo comensal</h4>

                    <form class="form-horizontal" method="post" action="ControladorComensal">
                        <input type="hidden" name="TxtId" value="<%=IdCom%>">
                        <div class="mb-3">
                            <label class="col-sm-6 control-label">Nº Documento identidad</label>
                            <input type="text" name="TxtDNI" value="<%=DNI%>" class="form-control" placeholder="Ingrese DNI u otro documento" maxlength="10" required>
                        </div>

                        <div class="mb-3">
                            <label class="col-sm-3 control-label">Nº fotocheck</label>
                            <input type="text" name="TxtFotocheck" value="<%=Fotocheck%>" class="form-control" placeholder="Ingrese nº fotocheck" required>
                        </div>

                        <div class="mb-3">
                            <label class="col-sm-3 control-label">Nombre</label>
                            <input type="text" name="TxtNombre" value="<%=Nombre%>" class="form-control" placeholder="Nombre" required>
                        </div>
<div class="mb-3">
                            <label class="col-sm-3 control-label">Area</label>
                            <select name="CboArea" class="form-select">
                                <%
                                    AreaDAO daa = new AreaDAO();
                                    List<Area> lista = daa.listar();
                                    Iterator<Area> itera = lista.iterator();
                                    Area ar = null;
                                    String SelectA = "";
                                    while (itera.hasNext()) {
                                        ar = itera.next();
                                %>
                                <option value="<%=ar.getIdArea()%>" <%
                                    int _IdArea;
                                    SelectA = "";
                                    _IdArea = ar.getIdArea();
                                    if (_IdArea == IdArea) {
                                        SelectA = "selected";
                                    }
                                        %><%=SelectA%>><%=ar.getNomArea()%></option>
                                <%}%>

                            </select>
                        </div>
                        <div class="mb-3">
                            <label class="col-sm-3 control-label">Cargo</label>
                            <select name="CboCargo" class="form-select">
                                <%
                                    CargoDAO dac = new CargoDAO();
                                    List<Cargo> list = dac.listar();
                                    Iterator<Cargo> iter = list.iterator();
                                    Cargo ca = null;
                                    String Select = "";
                                    while (iter.hasNext()) {
                                        ca = iter.next();
                                %>
                                <option value="<%=ca.getIdCar()%>" <%
                                    int _IdCar;
                                    Select = "";
                                    _IdCar = ca.getIdCar();

                                    if (_IdCar == IdCar) {
                                        Select = "selected";
                                    }
                                        %><%=Select%>><%=ca.getNomCar()%></option>
                                <%}%>
                            </select>
                        </div>
                        
                        <div class="mb-3">
                            <label class="col-sm-6 control-label">Fecha de nacimiento(dd/mm/yyyy)</label>
                            <!--<input type="text" class="form-control date" name="TxtFechaN" data-toggle="date-picker" data-single-date-picker="true" value="<%=FechaN%>">
                            -->
                            <input type="date" name="TxtFechaN" value="<%=FechaN%>" class="form-control" value="<%=FechaN%>" placeholder="Fecha nacimiento" required>
                        </div>
                        <div class="mb-3">
                            <label class="col-sm-3 control-label">Sexo</label>
                            <select name="CboSexo" class="form-select">
                                <option value="M" <%=SelecM%>>MASCULINO</option>
                                <option value="F"<%=SelecF%>>FEMENINO</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label">&nbsp;</label>
                            <div class="col-sm-6">
                                <input type="submit" name="accion" class="btn btn-sm btn-primary" value="<%=Valor%>">
                                <a href="./index.jsp?page=comensal" class="btn btn-sm btn-danger">Cancelar</a>

                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- end row -->





        </div> <!-- container -->
