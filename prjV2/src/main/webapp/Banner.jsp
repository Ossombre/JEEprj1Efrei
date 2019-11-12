<%-- 
    Document   : Banner
    Created on : 22 oct. 2019, 11:14:50
    Author     : adrie
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<div style="height: 50px; background-color: #E2E2E2; color: black">
<c:choose>
    <c:when test="${isAdmin}">
        <p style="text-align: right; padding-top: 5px">Hello admin ! Your session is active. <a href="goodbye.jsp"><i class='fas fa-power-off' style="color: black"></i></a></p>
    </c:when>
    <c:otherwise>
            <p style="text-align: right; padding-top: 5px">Hello empl ! Your session is active. <a href="goodbye.jsp"><i style="color: black" class='fas fa-power-off'></i></a></p>
    </c:otherwise>
</c:choose>
</div>
