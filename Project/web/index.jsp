<%-- 
    Document   : index
    Created on : 15 oct. 2019, 09:20:48
    Author     : hadri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>


        <form  name ='myform' action='controleur.jsp'>
            Login:<input type='text' name='nameField'><br/>
            Password:<input type='text' name='pwdField'><br/>
            <input type='submit' name='ok' value='ok'>
        </form>
        <%
            if (request.getParameter("Wrong")!=null) {
                if (request.getParameter("Wrong").equals("true"))
                    out.println("Connection failed! Verify your login/password and try again.");
                else if (request.getParameter("Wrong").equals("empty"))
                    out.println("You must enter values in both fields.");
            }
        %>
</body>
</html>
