/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.prjv2;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hadri
 */
@WebServlet(name = "CtrlDetails", urlPatterns = {"/CtrlDetails"})
public class CtrlDetails extends HttpServlet {

    @EJB
    private EmployeeSB employeeSB;
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String Origin = (String)session.getAttribute("Origin"); 
        if (Origin==null){
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
            
        switch (Integer.parseInt(Origin)){
            case 0:
            {                
                ArrayList<Employees> listOfEmpl = new ArrayList<>();
                listOfEmpl.addAll(employeeSB.getEmployees());
                if (listOfEmpl.isEmpty() || listOfEmpl.size()==0);
                    request.getRequestDispatcher("DisplayNull.jsp");
                request.setAttribute("listEmployees",listOfEmpl);
                request.getRequestDispatcher("DisplayTable.jsp").forward(request, response);
                break;
            }
            
            
            case 1:
            {
                if (request.getParameter("submit").equals("Save")){
                    Employees ChosenOne = (Employees) session.getAttribute("ChosenOne");
                    String mail = ChosenOne.getMail();
                    Employees empl = new Employees();
                    empl.setFname(request.getParameter("fname"));
                    empl.setLname(request.getParameter("lname"));
                    empl.setHphone(request.getParameter("hphone"));
                    empl.setMPhone(request.getParameter("mPhone"));
                    empl.setPPhone(request.getParameter("pPhone"));
                    empl.setAddress(request.getParameter("address"));
                    empl.setPostcode(request.getParameter("postCode"));
                    empl.setCity(request.getParameter("city"));
                    empl.setMail(request.getParameter("mail"));
                    if (mail.equals("")){
                        employeeSB.addEmployee(empl);
                        request.getRequestDispatcher("listEmployeesServ").forward(request, response);
                    }
                    else{
                        employeeSB.updateEmployee(empl, ChosenOne.getMail());
                        request.getRequestDispatcher("listEmployeesServ").forward(request, response);
                    }
                }
                else if (request.getParameter("submit").equals("Cancel")){
                    request.getRequestDispatcher("listEmployeesServ").forward(request,response);
                }
                break;
            }
                
                
                
                
                
            case 2:
            {
                String DetailsOf = request.getParameter("Sel");
                if (request.getParameter("submit").equals("Details")){
                    if (DetailsOf==null)
                        request.getRequestDispatcher("listEmployees.jsp").forward(request, response);
                    Employees selected = employeeSB.getEmployee(DetailsOf); 
                    request.setAttribute("ChosenOne",selected);
                    request.getRequestDispatcher("Info.jsp").forward(request, response);
                 }

                else if(request.getParameter("submit").equals("Add")){
                    Employees selected = new Employees();
                    selected.setFname("");
                    selected.setLname("");
                    selected.setHphone("");
                    selected.setMPhone("");
                    selected.setPPhone("");
                    selected.setAddress("");
                    selected.setPostcode("");
                    selected.setCity("");
                    selected.setMail("");
                    request.setAttribute("ChosenOne",selected);
                    request.getRequestDispatcher("Info.jsp").forward(request, response);
                }
                else if(request.getParameter("submit").equals("Delete")){
                    employeeSB.deleteEmployee(DetailsOf);
                    request.getRequestDispatcher("listEmployeesServ").forward(request, response);
                }
                break;
            }
        }
               
            
            
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
