<%-- 
    Document   : index
    Created on : 25 oct. 2019, 09:20:25
    Author     : hadri
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body style="width:90%; margin-left: 5%">


        <form  name ='myform' action='controller.jsp' style="width:50%; margin-left: 25%; margin-top: 20px; border: solid 1px lightgreyt; padding: 10px">
            <input class="form-control" type='text' name='nameField' placeholder="Login"><br/>
            <input class="form-control" type='text' name='pwdField' placeholder="Password"><br/>
            <input style="margin-left: 50%" type='submit' class="btn btn-primary" name='ok' value='ok'>
        </form>
        <c:if test="${param.Wrong != null}">
            <c:choose>
                <c:when test="${param.Wrong == 'true'}">
                    <c:out value="${'Connection failed! Verify your login/password and try again.'}"/>
                </c:when>
                <c:when test="${param.Wrong == 'empty'}">
                    <c:out value="${'You must enter values in both fields.'}"/>
                </c:when>
            </c:choose>
        </c:if>
</body>
</html>