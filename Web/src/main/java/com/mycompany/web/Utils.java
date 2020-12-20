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
public class Utils 
{
    public static boolean authenticate(String username, String password)
    {
        return username.equals("admin") && password.equals("admin123");
    }
}
