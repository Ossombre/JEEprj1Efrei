<%-- 
    Document   : DisplayNull
    Created on : 22 oct. 2019, 10:46:57
    Author     : adrie
--%>

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
            <h1 style="color:red">The company has no employee</h1>
            <input type="submit" name="submit" value="Details"><input type="submit" name="submit" value="Add"><input type="submit" value="Delete" name="submit">
        </form>
    </body>
</html>
