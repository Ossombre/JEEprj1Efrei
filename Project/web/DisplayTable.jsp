<%-- 
    Document   : DisplayTable
    Created on : 15 oct. 2019, 10:23:11
    Author     : adrie
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="Banner.jsp" %>
        <form action="CtrlDetails.jsp">
            <table>
                <tr>
                    <th>Sél</th>
                    <th>NAME</th>
                    <th>FIRST NAME</th>
                    <th>HOME PHONE</th>
                    <th>MOBILE PHONE</th>
                    <th>WORK PHONE</th>
                    <th>ADDRESS</th>
                    <th>POSTAL CODE</th>
                    <th>CITY</th>
                    <th>EMAIL</th>
                </tr>
                <c:forEach items="${listEmployees}" var="Employee">
                    <tr>
                        <td><input type="radio" id="radio" name="Sel" value="${Employee.mail}"></td>
                        <td>${Employee.lName}</td>
                        <td>${Employee.fName}</td>
                        <td>${Employee.hPhone}</td>
                        <td>${Employee.mPhone}</td>
                        <td>${Employee.pPhone}</td>
                        <td>${Employee.address}</td>
                        <td>${Employee.postCode}</td>
                        <td>${Employee.city}</td>
                        <td>${Employee.mail}</td>
                    </tr>
                </c:forEach>
            </table>
            <input type="submit" name="submit" value="Details">
            <c:if test="${kUser}">
                <input type="submit" name="submit" value="Add">
                <input type="submit" value="Delete" name="submit">
            </c:if>
        </form>
    </body>
</html>
