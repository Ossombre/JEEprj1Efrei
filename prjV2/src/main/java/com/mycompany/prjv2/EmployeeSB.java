/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.prjv2;

import java.util.ArrayList;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author hadri
 */
@Stateless
public class EmployeeSB {

    @PersistenceContext
    EntityManager em;
    
    public List getEmployees() {
        Query q = em.createQuery("SELECT e FROM Employees e");
        return q.getResultList();
    }
    
    public Employees getEmployee(String email) {
        ArrayList<Employees> arr = new ArrayList<>();
        Query q = em.createQuery("SELECT e FROM Employees e WHERE e.mail=?1");
        arr.addAll(q.setParameter(1, email).getResultList());
        return arr.get(0);
    }
    
    public void deleteEmployee(String email) {
        em.createQuery("DELETE FROM Employees e WHERE e.mail=?1").setParameter(1, email).executeUpdate();
    }
    
    public void updateEmployee(Employees empl, String email) {
        Query q = em.createQuery("UPDATE Employees e SET e.fname=?1, e.lname=?2, e.hphone=?3, e.mPhone=?4, e.pPhone=?5, e.address=?6, e.postcode=?7, e.city=?8, e.mail=?9 WHERE e.mail=?10");
        q.setParameter(1, empl.getFname());
        q.setParameter(2, empl.getLname());
        q.setParameter(3, empl.getHphone());
        q.setParameter(4, empl.getMPhone());
        q.setParameter(5, empl.getPPhone());
        q.setParameter(6, empl.getAddress());
        q.setParameter(7, empl.getPostcode());
        q.setParameter(8, empl.getCity());
        q.setParameter(9, empl.getMail());
        q.setParameter(10, email);
        q.executeUpdate();
    }
    
    public void addEmployee(Employees empl) {
        Query q = em.createNativeQuery("INSERT INTO Employees (fname, lname, hphone, mPhone, pPhone, address, postcode, city, mail) VALUES (?1, ?2, ?3, ?4, ?5, ?6, ?7, ?8, ?9)");
        q.setParameter(1, empl.getFname());
        q.setParameter(2, empl.getLname());
        q.setParameter(3, empl.getHphone());
        q.setParameter(4, empl.getMPhone());
        q.setParameter(5, empl.getPPhone());
        q.setParameter(6, empl.getAddress());
        q.setParameter(7, empl.getPostcode());
        q.setParameter(8, empl.getCity());
        q.setParameter(9, empl.getMail());
        q.executeUpdate();
    }
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
}
