/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.user;

/**
 *
 * @author Charles
 */
public class User {
    int UserID;
    String fname;
    String lname;
    String email;
    String pass;
    
    public User(){
    }
    
    public User(int UserID, String fname, String lname, String email, String pass){
        this.UserID = UserID;
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.pass = pass;        
    }
    
    public User(String fname, String lname, String email, String pass) {
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.pass = pass;
    }
    
        public User(String email, String pass) {
        this.email = email;
        this.pass = pass;
    }

    public int getUserID() {
        return UserID;
    }

    public void setUserID(int UserID) {
        this.UserID = UserID;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
    
    
    
}
