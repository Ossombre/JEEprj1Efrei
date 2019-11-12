<%-- 
    Document   : save
    Created on : 22 oct. 2019, 08:49:43
    Author     : adrie
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="web.lsi.Employee"%>

        <%
            if (request.getParameter("submit").equals("save")){
                String mail = ((Employee)session.getAttribute("ChosenOne")).getMail();
                if (mail.equals("")){
                    Connection conn;
                    Statement stmt;

                    try {
                        conn = DriverManager.getConnection("jdbc:derby://localhost:1527/JEEPRJ", "jee", "jee");

                        try {
                            stmt = conn.createStatement();
                            try {
                                int rs = stmt.executeUpdate("INSERT INTO EMPLOYEES (fName, lName, hPhone, mPhone, pPhone, address, postCode, city, mail)"
                                + " VALUES ('" + request.getParameter("fName") + "','" + 
                                        request.getParameter("lName") + "','" +
                                        request.getParameter("hPhone") + "','" +
                                        request.getParameter("mPhone") + "','" +
                                        request.getParameter("pPhone") + "','" +
                                        request.getParameter("address") + "','" +
                                        request.getParameter("postCode") + "','" +
                                        request.getParameter("city") + "','" +
                                        request.getParameter("mail") + "')");

                                request.getRequestDispatcher("listEmployees.jsp").forward(request, response);

                            } 
                            catch (SQLException e) {
                                System.out.println(e.getMessage());
                            }
                        } catch (SQLException e) {
                            System.out.println(e.getMessage());
                        }

                    } catch (SQLException e) {
                        System.out.println(e.getMessage());
                    }
                }
                else{
                    Connection conn;
                    Statement stmt;

                    try {
                        conn = DriverManager.getConnection("jdbc:derby://localhost:1527/JEEPRJ", "jee", "jee");

                        try {
                            stmt = conn.createStatement();
                            try {
                                int rs = stmt.executeUpdate("UPDATE EMPLOYEES SET "
                                + " fName = '" + request.getParameter("fName") + "', lName = '" + 
                                        request.getParameter("lName") + "', hPhone = '" +
                                        request.getParameter("hPhone") + "', mPhone = '" +
                                        request.getParameter("mPhone") + "', pPhone = '" +
                                        request.getParameter("pPhone") + "', address = '" +
                                        request.getParameter("address") + "', postCode = '" +
                                        request.getParameter("postCode") + "', city = '" +
                                        request.getParameter("city") + "', mail = '" +
                                        request.getParameter("mail") + "' WHERE mail = '" + mail + "'");
                                request.getRequestDispatcher("listEmployees.jsp").forward(request, response);

                            } 
                            catch (SQLException e) {
                                System.out.println(e.getMessage());
                            }
                        } catch (SQLException e) {
                            System.out.println(e.getMessage());
                        }

                    } catch (SQLException e) {
                        System.out.println(e.getMessage());
                    }
                }
            }
            else if (request.getParameter("submit").equals("Cancel")){
                request.getRequestDispatcher("listEmployees.jsp").forward(request,response);
            }
        %>
