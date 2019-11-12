<%-- 
    Document   : DisplayTable
    Created on : 15 oct. 2019, 10:23:11
    Author     : hadri
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
        <div style="width:90%; margin-left: 5%">
        <c:set var="Origin" value="2" scope="session"/>
        <form action="CtrlDetails">
            <table class="table table-striped">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">Sél</th>
                        <th scope="col">NAME</th>
                        <th scope="col">FIRST NAME</th>
                        <th scope="col">HOME PHONE</th>
                        <th scope="col">MOBILE PHONE</th>
                        <th scope="col">WORK PHONE</th>
                        <th scope="col">ADDRESS</th>
                        <th scope="col">POSTAL CODE</th>
                        <th scope="col">CITY</th>
                        <th scope="col">EMAIL</th>
                    </tr>
                </thead>
                <c:forEach items="${listEmployees}" var="Employee">
                    <tr>
                        <td><input type="radio" id="radio" name="Sel" value="${Employee.mail}" required></td>
                        <td>${Employee.getLname()}</td>
                        <td>${Employee.getFname()}</td>
                        <td>${Employee.getHphone()}</td>
                        <td>${Employee.getMPhone()}</td>
                        <td>${Employee.getPPhone()}</td>
                        <td>${Employee.getAddress()}</td>
                        <td>${Employee.getPostcode()}</td>
                        <td>${Employee.getCity()}</td>
                        <td>${Employee.getMail()}</td>
                    </tr>
                </c:forEach>
            </table>
            <input type="submit"  class="btn btn-primary" name="submit" value="Details">
            <c:if test="${isAdmin}">
                <a href="CtrlDetails?submit=Add"><input  class="btn btn-primary" type="button" name="submit" value="Add"></a>
                <input type="submit" class="btn btn-primary" value="Delete" name="submit">
            </c:if>
        </form>
        </div>
    </body>
</html>
