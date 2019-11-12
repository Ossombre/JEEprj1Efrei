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
        <div style="width:90%; margin-left: 5%">
        <c:set var="ChosenOne" value="${ChosenOne}" scope="session"/>
        <c:set var="Origin" value="1" scope="session"/>
        <form action="CtrlDetails">
            <label for="fname">Nom</label>  <input class="form-control" type="text" name="fname" value="${ChosenOne.getFname()}" placeholder="First name" required/> <br/>
            <label for="lname">Prénom</label>  <input class="form-control" type="text" name="lname" value="${ChosenOne.getLname()}" placeholder="Last name" required/> <br/>
            <label for="hphone">Tél dom</label>  <input class="form-control" type="text" name="hphone" value="${ChosenOne.getHphone()}" placeholder="Home phone" required/> <br/>
            <label for="mPhone">Tél mob</label>  <input class="form-control" type="text" name="mPhone" value="${ChosenOne.getMPhone()}" placeholder="Mobile phone" required/> <br/>
            <label for="pPhone">Tél pro</label>  <input class="form-control" type="text" name="pPhone" value="${ChosenOne.getPPhone()}" placeholder="Professional phone" required/> <br/>
            <label for="address">Adresse</label>  <input class="form-control" type="text" name="address" value="${ChosenOne.getAddress()}" placeholder="Address" required/> <br/>
            <label for="postCode">Code postal</label>  <input class="form-control" type="text" name="postCode" value="${ChosenOne.getPostcode()}" placeholder="Postal code" required/> <br/>
            <label for="ciy">Ville</label>  <input class="form-control" type="text" name="city" value="${ChosenOne.getCity()}" placeholder="City" required/>    
            <label for="mail">Adresse e-mail</label>  <input class="form-control" type="text" name="mail" value="${ChosenOne.getMail()}" placeholder="Mail" required/> <br/>
            
            <c:if test="${isAdmin}">
                <input type="submit" class="btn btn-primary" name="submit" value="Save"/>
            </c:if>
            <a href="Save?submit=Cancel"><input class="btn btn-secondary" type="button" name="submit" value="Cancel"/></a>
        </form>
        </div>
    </body>
</html>
