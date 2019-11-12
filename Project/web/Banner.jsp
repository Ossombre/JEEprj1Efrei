<%-- 
    Document   : Banner
    Created on : 22 oct. 2019, 11:14:50
    Author     : adrie
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<c:choose>
    <c:when test="${kUser}">
        <p style="text-align: right">Hello admin ! Your session is active. <a href="goodbye.jsp"><i class='fas fa-power-off'></i></a></p>
    </c:when>
    <c:otherwise>
            <p style="text-align: right">Hello empl ! Your session is active. <a href="goodbye.jsp"><i class='fas fa-power-off'></i></a></p>
    </c:otherwise>
</c:choose>
