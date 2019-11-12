<%-- 
    Document   : Info
    Created on : 22 oct. 2019, 08:32:03
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
        <form action="save.jsp">
            Nom  <input type="text" name="fName" value="${ChosenOne.fName}" placeholder="First name" required/> <br/>
            Prénom  <input type="text" name="lName" value="${ChosenOne.lName}" placeholder="Last name" required/> <br/>
            Tél dom  <input type="text" name="hPhone" value="${ChosenOne.hPhone}" placeholder="Home phone" required/> <br/>
            Tél mob  <input type="text" name="mPhone" value="${ChosenOne.mPhone}" placeholder="Mobile phone" required/> <br/>
            Tél pro  <input type="text" name="pPhone" value="${ChosenOne.pPhone}" placeholder="Professional phone" required/> <br/>
            Adresse  <input type="text" name="address" value="${ChosenOne.address}" placeholder="Address" required/> <br/>
            Code postal  <input type="text" name="postCode" value="${ChosenOne.postCode}" placeholder="Postal code" required/> <br/>
            Ville  <input type="text" name="city" value="${ChosenOne.city}" placeholder="City" required/>    
            Adresse e-mail  <input type="text" name="mail" value="${ChosenOne.mail}" placeholder="Mail" required/> <br/>
            
            <c:if test="${kUser}">
                <input type="submit" name="submit" value="save"/>
            </c:if>
            <input type="submit" name="submit" value="Cancel">
        </form>
    </body>
</html>
