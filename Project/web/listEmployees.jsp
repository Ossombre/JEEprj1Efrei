<%-- 
    Document   : bienvenue
    Created on : 19 sept. 2019, 10:40:26
    Author     : JAA
--%>
<%@page import="web.lsi.Employee"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.ArrayList"%>



        <%
            Connection conn;
            Statement stmt;
            ResultSet rs;
            ArrayList<Employee> listEmployees = new ArrayList();

            try {
                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/JEEPRJ", "jee", "jee");
                
                try {
                    stmt = conn.createStatement();
                    try {

                        rs = stmt.executeQuery("SELECT * FROM EMPLOYEES");
                        

                        while(rs.next()){
                            Employee tmp = new Employee();
                            tmp.setfName(rs.getString("fName"));
                            tmp.setlName(rs.getString("lName"));
                            tmp.sethPhone(rs.getString("hPhone"));
                            tmp.setmPhone(rs.getString("mPhone"));
                            tmp.setpPhone(rs.getString("pPhone"));
                            tmp.setAddress(rs.getString("address"));
                            tmp.setPostCode(rs.getString("postCode"));
                            tmp.setCity(rs.getString("city"));
                            tmp.setMail(rs.getString("mail"));
                            listEmployees.add(tmp);
                        }
                        
                        if (listEmployees.size()==0){
                            request.getRequestDispatcher("DisplayNull.jsp").forward(request, response);
                        }
                        
                        request.setAttribute("listEmployees",listEmployees);
                        request.getRequestDispatcher("DisplayTable.jsp").forward(request, response);
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
            
        %>

