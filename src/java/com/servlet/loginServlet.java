/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import com.beans.Payment;
import com.beans.User;
import com.databaseClasses.PaymentDAO;
import com.databaseClasses.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author priya
 */
public class loginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
         }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String userid = request.getParameter("userid");
        String password = request.getParameter("password");
        System.out.println("userid:" + userid);
        System.out.println("password:" + password);
        UserDAO udb = new UserDAO();
        try { 
            if("admin".equals(userid) && "admin".equals(password))
            {
                PaymentDAO pdb = new PaymentDAO();
                List<Payment> paymentList = pdb.getAllPaymentDetails();
                request.setAttribute("paymentList", paymentList);
                getServletContext().getRequestDispatcher("/adminHome.jsp").forward(request, response);
            }else{
                Boolean result = udb.isAllowedToLogin(userid, password);
                System.out.println("result:" + result);
                if(result)
                {
                    User u = udb.getLoginUser(userid, password);
                    request.setAttribute("user", u);
                    getServletContext().getRequestDispatcher("/home.jsp").forward(request, response);
                }else{
                     request.setAttribute("error", "User Not Found!");
                    getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
                }
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(loginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
