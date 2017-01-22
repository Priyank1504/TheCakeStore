/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.databaseClasses;

import com.beans.Payment;
import com.beans.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author priya
 */
public class PaymentDAO {
    public void savePaymentDetails(Payment p) throws ClassNotFoundException, SQLException
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/thecakestore", "root", "root");   
        String query= "insert into paymentdetails values(default,?,?,?,?,?,?)";
        PreparedStatement ps= con.prepareStatement(query);
        ps.setString(1,p.getFirstName());
        ps.setString(2,p.getLastName());
        ps.setString(3,p.getCardNumber());
        ps.setString(4,p.getCcv());
        ps.setString(5,p.getCakeName());
        ps.setString(6,p.getAmount());
        ps.executeUpdate(); 
    }
     public List<Payment> getAllPaymentDetails() throws ClassNotFoundException, SQLException {
        List<Payment> paymentList = new ArrayList<Payment>();
        
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/thecakestore", "root", "root");
            String query = "select * from paymentdetails;";
            System.out.println("Query=" + query);
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            
            while(rs.next()) {
                Payment p =new Payment();
                p.setFirstName(rs.getString("firstname"));
                p.setLastName(rs.getString("lastname"));
                p.setCardNumber(rs.getString("cardNumber"));
                p.setCcv(rs.getString("ccv"));
                p.setCakeName(rs.getString("cakename"));
                p.setAmount(rs.getString("amount"));
                paymentList.add(p);
            }
            rs.close();
        
        return paymentList;
    }   
}
