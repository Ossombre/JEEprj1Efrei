/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.prjv2;

import java.util.ArrayList;
import javax.ejb.EJB;

/**
 *
 * @author hadri
 */
public class listEmployees {
    
    @EJB
    private EmployeeSB employeeSB;
    ArrayList<Employees> listOfEmpl;
    
    public ArrayList<Employees> procRequest() {
        /*listOfEmpl = new ArrayList<>();
        listOfEmpl.addAll(employeeSB.getEmployees());
        if (listOfEmpl.isEmpty() || listOfEmpl.size()==0);
            request.getRequestDispatcher("DisplayNull.jsp").forward(request, response);
        request.setAttribute("listEmployees",listOfEmpl);
        request.getRequestDispatcher("DisplayTable.jsp").forward(request, response);*/
        return null;
    }
    
}
