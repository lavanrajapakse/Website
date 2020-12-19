/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.web;

/**
 *
 * @author DELL
 */
public class Student 
{
    private String ID;
    private String Name;
    private String NIC;

    public Student(String ID, String Name, String NIC) {
        this.ID = ID;
        this.Name = Name;
        this.NIC = NIC;
    }

    public String getID() {
        return ID;
    }

    public String getName() {
        return Name;
    }

    public String getNIC() {
        return NIC;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public void setNIC(String NIC) {
        this.NIC = NIC;
    }
    
    
}
