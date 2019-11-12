<%-- 
    Document   : controller
    Created on : 15 oct. 2019, 09:23:27
    Author     : hadri
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<%
    System.out.println("BLAH");
    String login = request.getParameter("nameField");
    String pwd = request.getParameter("pwdField");
    
    if (login.trim().equals("") || pwd.trim().equals(""))
        request.getRequestDispatcher("index.jsp?Wrong=empty").forward(request, response);
    
    boolean admin = false;
    System.out.println("rien manquant");
    if (login.equals("admin") && pwd.equals("admin")) {
        System.out.println("admin");
        admin = true;
        session.setAttribute("kUser", admin);
        request.getRequestDispatcher("listEmployees.jsp").forward(request, response);
    }
        
    else if (login.equals("empl") && (pwd.equals("empl"))) {
        System.out.println("empl");
        session.setAttribute("kUser", admin);
        request.getRequestDispatcher("listEmployees.jsp").forward(request, response);
    }
    System.out.println("NIET");
    response.sendRedirect("index.jsp?Wrong=true");
%>
