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
public class UserDatabase {
    Connection con ;

    public UserDatabase(Connection con) {
        this.con = con;
    }
    
    //for register user 
    public boolean saveUser(User user){
        /*
        boolean set = false;
        
        try {
            Statement stmt = con.createStatement();
            stmt.executeUpdate("INSERT INTO employee (FName, LName, Email, PWord) VALUES ('"+user.getFname()+"','"+user.getLname()+"','"+user.getEmail()+"','"+user.getPass()+"')");
        }catch(Exception ex){
            ex.printStackTrace();
        }
        */
        boolean set = false;
        try{
            //Insert register data to database
           String query = "INSERT INTO user(FName,LName,PWord,Email) values(?,?,?,?)";
           PreparedStatement pt = this.con.prepareStatement(query);
           pt.setString(1, user.getFname());
           pt.setString(2, user.getLname());
           pt.setString(3, user.getPass());
           pt.setString(4, user.getEmail());
           
           pt.executeUpdate();
           System.out.println("db execution");
           set = true;

        }catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }
        
}
    


