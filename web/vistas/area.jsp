

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Area"%>
<%@page import="ModeloDAO.AreaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <!-- Start Content-->
                    <div class="container-fluid">
                        
                       

                       <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="header-title">Registro de areas</h4>
                                    
                                   
                                    <a href="./index.jsp?page=agregararea" class="btn btn-primary btn-sm">Nueva area</a>

                                    <table class="mb-0 table" id="mitabla">
                                        <thead>
                                            <tr>
                                                <th>Id</th>
                                                
                                                
                                                <th>Descripcion</th>
                                                
                                                                                               
                                                <th>Acciones</th>
                                            </tr>
                                        </thead>

                                        <%
                                            AreaDAO dao=new AreaDAO();
                                            List<Area>list=dao.listar();
                                            Iterator<Area>iter=list.iterator();
                                            Area ar=null;
                                            while (iter.hasNext()){
                                            ar=iter.next();
                                            
                                            
                                        %>


                                        <tbody>
                                            <tr>
                                                <th scope="row"><%=ar.getIdArea()%></th>
                                               
                                               
                                                <td><%=ar.getNomArea()%></td>
                                               
                                               
                                                <td>

                                <a href="ControladorArea?accion=editar&id=<%=ar.getIdArea()%>" title="Editar datos" class="btn btn-primary btn-sm"><span class="uil-edit" aria-hidden="true"></span></a>
                                <a href="ControladorProducto?accion=eliminar&id=<%=ar.getIdArea()%>" title="Eliminar" onclick="return confirm('Esta seguro de eliminar?')" class="btn btn-danger btn-sm"><span class="uil-trash" aria-hidden="true"></span></a>
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
