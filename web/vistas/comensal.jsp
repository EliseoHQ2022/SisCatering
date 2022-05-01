
<%@page import="Modelo.Comensal"%>
<%@page import="ModeloDAO.ComensalDAO"%>
<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


                    <!-- Start Content-->
                    <div class="container-fluid">
                        
                       

                       <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="header-title">Registro de comensales</h4>
                               
                                    <a href="./index.jsp?page=agregarcomensal" class="btn btn-primary btn-sm">Nuevo comensal</a>


                                    <table class="mb-0 table" id="mitabla">
                                        <thead>
                                            <tr>
                                                <th>Id</th>
                                                <th>DNI</th>
                                                <th>Fotocheck</th>
                                                <th>Nombre</th>
                                                <th>Cargo</th>
                                                <th>Area</th>
                                                <th>Fecha nac.</th>
                                                <th>Sexo</th>
                                                
                                                <th>Acciones</th>
                                            </tr>
                                        </thead>

                                        <%
                                            ComensalDAO dao=new ComensalDAO();
                                            List<Comensal>list=dao.listar();
                                            Iterator<Comensal>iter=list.iterator();
                                            Comensal com=null;
                                            while (iter.hasNext()){
                                            com=iter.next();
                                            
                                            
                                        %>


                                        <tbody>
                                            <tr>
                                                <th scope="row"><%=com.getIdCom()%></th>
                                                <td><%=com.getDNI()%></td>
                                                <td><%=com.getFotocheck()%></td>
                                                <td><%=com.getNombre()%></td>
                                                <td><%=com.getCargo()%></td>
                                                <td><%=com.getArea()%></td>
                                                <td><%=com.getFechaN()%></td>
                                                 <td><%=com.getSexo()%></td>
                                                <td>

                                <a href="ControladorComensal?accion=editar&id=<%=com.getIdCom()%>" title="Editar datos" class="btn btn-primary btn-sm"><span class="uil-edit" aria-hidden="true"></span></a>
                                <a href="ControladorComensal?accion=eliminar&id=<%=com.getIdCom()%>" title="Eliminar" onclick="return confirm('Esta seguro de eliminar?')" class="btn btn-danger btn-sm"><span class="uil-trash" aria-hidden="true"></span></a>
                            </td>
                                            </tr>
                                            <%}%>
                                           
                                        </tbody>
                                         
                                      
                                    </table>

                                <label class="col-sm-6 control-label" id="contador">Cantidad de registros <%=list.size()%>  </label>
                                </div>
                            </div>
                        </div>
                    </div>
                        <!-- end row -->

                        


                        
                        
                    </div> <!-- container -->

