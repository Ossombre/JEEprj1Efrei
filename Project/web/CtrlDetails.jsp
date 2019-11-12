<%-- 
    Document   : CtrlDetails
    Created on : 22 oct. 2019, 08:15:39
    Author     : adrie
--%>

<%@page import="web.lsi.Employee"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

        <%
            if (request.getParameter("submit").equals("Details")){
                String DetailsOf = request.getParameter("Sel");
                if (DetailsOf==null){
                    request.getRequestDispatcher("listEmployees.jsp").forward(request, response);
                }
                Connection conn;
                Statement stmt;
                ResultSet rs;

                try {
                    conn = DriverManager.getConnection("jdbc:derby://localhost:1527/JEEPRJ", "jee", "jee");

                    try {
                        stmt = conn.createStatement();
                        try {
                            rs = stmt.executeQuery("SELECT * FROM EMPLOYEES WHERE mail = '" + DetailsOf + "'");


                            Employee selected = new Employee();

                            while(rs.next()){   
                                selected.setfName(rs.getString("fName"));
                                selected.setlName(rs.getString("lName"));
                                selected.sethPhone(rs.getString("hPhone"));
                                selected.setmPhone(rs.getString("mPhone"));
                                selected.setpPhone(rs.getString("pPhone"));
                                selected.setAddress(rs.getString("address"));
                                selected.setPostCode(rs.getString("postCode"));
                                selected.setCity(rs.getString("city"));
                                selected.setMail(rs.getString("mail"));
                            }

                            session.setAttribute("ChosenOne",selected);
                            request.getRequestDispatcher("Info.jsp").forward(request, response);
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
            else if(request.getParameter("submit").equals("Add")){
                Employee selected = new Employee();
                selected.setfName("");
                selected.setlName("");
                selected.sethPhone("");
                selected.setmPhone("");
                selected.setpPhone("");
                selected.setAddress("");
                selected.setPostCode("");
                selected.setCity("");
                selected.setMail("");
                session.setAttribute("ChosenOne",selected);
                request.getRequestDispatcher("Info.jsp").forward(request, response);
            }
            else if(request.getParameter("submit").equals("Delete")){
                try {
                    Connection conn;
                    Statement stmt;
                    String DetailsOf = request.getParameter("Sel");
                    conn = DriverManager.getConnection("jdbc:derby://localhost:1527/JEEPRJ", "jee", "jee");

                    try {
                        stmt = conn.createStatement();
                        try {
                            int rs = stmt.executeUpdate("DELETE FROM EMPLOYEES WHERE mail = '" + DetailsOf + "'");
                            
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
            
        %>
