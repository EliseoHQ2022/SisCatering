
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% request.setAttribute("action", request.getParameter("page"));%>
<c:choose>
    <c:when test="${action eq 'comensal'}">
        <jsp:include page="vistas/comensal.jsp"/>
    </c:when>
    <c:when test="${action eq 'familia'}">
        <jsp:include page="vistas/familia.jsp"/>
    </c:when>
    <c:when test="${action eq 'agregarfamilia'}">
        <jsp:include page="vistas/agregarfamilia.jsp"/>
    </c:when>
    <c:when test="${action eq 'producto'}">
        <jsp:include page="vistas/producto.jsp"/>
    </c:when>
    <c:when test="${action eq 'agregarproducto'}">
        <jsp:include page="vistas/agregarproducto.jsp"/>
    </c:when>
    <c:when test="${action eq 'agregarcomensal'}">
        <jsp:include page="vistas/agregarcomensal.jsp"/>
    </c:when>
    <c:when test="${action eq 'area'}">
        <jsp:include page="vistas/area.jsp"/>
    </c:when>
    <c:when test="${action eq 'cargo'}">
        <jsp:include page="vistas/cargo.jsp"/>
    </c:when>
    <c:when test="${action eq 'agregararea'}">
        <jsp:include page="vistas/agregararea.jsp"/>
    </c:when>
    <c:when test="${action eq 'agregarcargo'}">
        <jsp:include page="vistas/agregarcargo.jsp"/>
    </c:when>
    <c:when test="${action eq 'registrarventa'}">
        <jsp:include page="vistas/registrarventa.jsp"/>
    </c:when>
    <c:when test="${action eq 'venta'}">
        <jsp:include page="vistas/venta.jsp"/>
    </c:when>
    <c:when test="${action eq 'reportecomensal'}">
        <jsp:include page="vistas/reportecomensal.jsp"/>
    </c:when>
    <c:when test="${action eq 'reporteproducto'}">
        <jsp:include page="vistas/reporteservicio.jsp"/>
    </c:when>
    <c:otherwise>
        
        <jsp:include page="vistas/dashboard.jsp"/>
            
    </c:otherwise>
</c:choose>