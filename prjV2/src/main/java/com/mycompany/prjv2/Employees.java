/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.prjv2;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author hadri
 */
@Entity
@Table(name = "employees")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Employees.findAll", query = "SELECT e FROM Employees e")
    , @NamedQuery(name = "Employees.findByFname", query = "SELECT e FROM Employees e WHERE e.fname = :fname")
    , @NamedQuery(name = "Employees.findByLname", query = "SELECT e FROM Employees e WHERE e.lname = :lname")
    , @NamedQuery(name = "Employees.findByHphone", query = "SELECT e FROM Employees e WHERE e.hphone = :hphone")
    , @NamedQuery(name = "Employees.findByMPhone", query = "SELECT e FROM Employees e WHERE e.mPhone = :mPhone")
    , @NamedQuery(name = "Employees.findByPPhone", query = "SELECT e FROM Employees e WHERE e.pPhone = :pPhone")
    , @NamedQuery(name = "Employees.findByAddress", query = "SELECT e FROM Employees e WHERE e.address = :address")
    , @NamedQuery(name = "Employees.findByPostcode", query = "SELECT e FROM Employees e WHERE e.postcode = :postcode")
    , @NamedQuery(name = "Employees.findByCity", query = "SELECT e FROM Employees e WHERE e.city = :city")
    , @NamedQuery(name = "Employees.findByMail", query = "SELECT e FROM Employees e WHERE e.mail = :mail")})
public class Employees implements Serializable {

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 64)
    @Column(name = "fname")
    private String fname;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 64)
    @Column(name = "lname")
    private String lname;
    @Size(max = 15)
    @Column(name = "hphone")
    private String hphone;
    @Size(max = 15)
    @Column(name = "mPhone")
    private String mPhone;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 15)
    @Column(name = "pPhone")
    private String pPhone;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "address")
    private String address;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 5)
    @Column(name = "postcode")
    private String postcode;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 64)
    @Column(name = "city")
    private String city;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 150)
    @Column(name = "mail")
    private String mail;

    public Employees() {
    }

    public Employees(String mail) {
        this.mail = mail;
    }

    public Employees(String mail, String fname, String lname, String pPhone, String address, String postcode, String city) {
        this.mail = mail;
        this.fname = fname;
        this.lname = lname;
        this.pPhone = pPhone;
        this.address = address;
        this.postcode = postcode;
        this.city = city;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getHphone() {
        return hphone;
    }

    public void setHphone(String hphone) {
        this.hphone = hphone;
    }

    public String getMPhone() {
        return mPhone;
    }

    public void setMPhone(String mPhone) {
        this.mPhone = mPhone;
    }

    public String getPPhone() {
        return pPhone;
    }

    public void setPPhone(String pPhone) {
        this.pPhone = pPhone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (mail != null ? mail.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Employees)) {
            return false;
        }
        Employees other = (Employees) object;
        if ((this.mail == null && other.mail != null) || (this.mail != null && !this.mail.equals(other.mail))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mycompany.prjv2.Employees[ mail=" + mail + " ]";
    }
    
}
