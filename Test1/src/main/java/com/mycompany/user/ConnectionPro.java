/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.user;

import java.sql.*;

/**
 *
 * @author Charles
 */
public class ConnectionPro {

    //database config
    /*
    protected String database_name = "jarvisbot";
    protected String database_user = "root";
    protected String database_pass = "";
    */
    
    private static Connection con;
    
    public static Connection getConnection(){
        //create a connection on instance
        try {
             Class.forName("com.mysql.jdbc.Driver");
             con = DriverManager.getConnection("jdbc:mysql://localhost/jarvisbot?serverTimezone=UTC","root", "");
        } catch(Exception ex){
             ex.printStackTrace();
        }
        return con;
    }
}
