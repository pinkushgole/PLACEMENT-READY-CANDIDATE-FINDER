/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import db.DbConector;
import dto.FeedbackDaoImple;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author asus
 */
public class Contact extends HttpServlet {

   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String fname=req.getParameter("fname");
       String lname=req.getParameter("lname");
       String email=req.getParameter("email");
       String contact=req.getParameter("phoneno");
       String message=req.getParameter("message");
       String name=fname+" "+lname;
       HttpSession session=req.getSession(true);
       FeedbackDaoImple fd=new FeedbackDaoImple(DbConector.getConnection());
       boolean f=fd.contactAdmin(name, email, contact, message);
       if(f)
        {
            session.setAttribute("message", "Your Request send is Succesfully...");
            resp.sendRedirect("Contact.jsp");
        }
        else{
            //System.out.println("user register error...");
             session.setAttribute("message", "SomeThing Wrong On Server..");
            resp.sendRedirect("Contact.jsp");
        }
   }
   
}
