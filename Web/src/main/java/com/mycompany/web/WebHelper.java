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
public class WebHelper 
{
    public static Student[] getStudent()
    {
        Student[] st = new Student[3];
        st[0] = new Student("1", "John", "A1");
        st[1] = new Student("2", "George", "B1");
        st[2] = new Student("3", "Jack", "C1");
        
        return st;
    }
    
    public static String getGreeting()
    {
        String name = "John";
        String greeting = "Hello";
        return greeting + " " + name;
    }
}
