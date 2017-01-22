/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.databaseClasses;

import com.beans.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
/**
 *
 * @author priya
 */
public class UserDAO {
    public void addUser(User u) throws ClassNotFoundException, SQLException
    {
        System.out.println("We are in add USer");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/thecakestore", "root", "root");   
        String query= "insert into user values(default,?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps= con.prepareStatement(query);
        ps.setString(1,u.getFirstName());
        ps.setString(2,u.getLastName());
        ps.setString(3,u.getEmail());
        ps.setString(4,u.getUsedID());
        ps.setString(5,u.getStreet());
        ps.setString(6,u.getState());
        ps.setString(7,u.getCity());
        ps.setString(8,u.getZipCode());
        ps.setString(9,u.getPassword());
        ps.executeUpdate(); 
    }
    public Boolean isAllowedToLogin(String user, String pass) throws ClassNotFoundException, SQLException
    {
        System.out.println("user:" + user);
        System.out.println("pass:" + pass);
           String userid = user;
           String Password = pass;
           if(userid != null && Password != null){
           String l = "null";
           Class.forName("com.mysql.jdbc.Driver");
           Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/thecakestore", "root", "root");   
           String query= "select * from user where userid='"+userid+"' and password='"+Password+"';";
           System.out.println("Query="+query);
           Statement stmt=con.createStatement();
           ResultSet rs=stmt.executeQuery(query);
            if(rs.next())
            {
                System.out.println("we are in if statement");
                 l = rs.getString("userid");
            }
            else
            {
                System.out.println("Empty");
            }
            rs.close();
            if(l.equals(userid))
                return true;
            else
                return false;
           }
           else{
           return false;
           }
    }
    public User getLoginUser(String user, String pass) throws ClassNotFoundException, SQLException {
        String userid = user;
        String Password = pass;
        User u = new User();
        if (userid != null && Password != null) {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/thecakestore", "root", "root");
            String query = "select * from user where userid='" + userid + "' and password='" + Password + "';";
            System.out.println("Query=" + query);
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            if (rs.next()) {
                u.setFirstName(rs.getString("firstname"));
                u.setLastName(rs.getString("lastname"));
                u.setEmail(rs.getString("email"));
                u.setUsedID(rs.getString("userid"));
                u.setStreet(rs.getString("street"));
                u.setState(rs.getString("state"));
                u.setCity(rs.getString("city"));
                u.setZipCode(rs.getString("zip"));
                u.setPassword(rs.getString("password"));
            }
            rs.close();
        }
        return u;
    }
    
    public User getLoginUserByFullName(String firstName, String lastName) throws ClassNotFoundException, SQLException {
        User u = new User();
        if (firstName != null && lastName != null) {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/thecakestore", "root", "root");
            String query = "select * from user where firstname='" + firstName + "' and lastname='" + lastName + "';";
            System.out.println("Query=" + query);
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            if (rs.next()) {
                u.setFirstName(rs.getString("firstname"));
                u.setLastName(rs.getString("lastname"));
                u.setEmail(rs.getString("email"));
                u.setUsedID(rs.getString("userid"));
                u.setStreet(rs.getString("street"));
                u.setState(rs.getString("state"));
                u.setCity(rs.getString("city"));
                u.setZipCode(rs.getString("zip"));
                u.setPassword(rs.getString("password"));
            }
            rs.close();
        }
        return u;
    }
    
    public Object getLoginUser() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
