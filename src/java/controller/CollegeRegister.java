/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import db.DbConector;
import dto.CollegeDaoImple;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modal.CollegeDtls;

/**
 *
 * @author asus
 */
public class CollegeRegister extends HttpServlet {

    


    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("Register.jsp");
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String college_name=req.getParameter("college_name");
       String college_email=req.getParameter("college_email");
       String college_password=req.getParameter("college_password");
       String college_contact=req.getParameter("college_contact");
       String college_aemail=req.getParameter("college_aemail");
       String c_location=req.getParameter("college_location");
       String college_city=req.getParameter("college_city");
       String c_state=req.getParameter("college_state");
       String c_pincode=req.getParameter("college_pincode");
       String college_address=c_location + "," + c_state + "," +c_pincode;
       String college_status="Disable";
       
       CollegeDtls col=new CollegeDtls();
       col.setCollege_name(college_name);
       col.setCollege_email(college_email);
       col.setCollege_password(college_password);
       col.setCollege_contact(college_contact);
       col.setCollege_aemail(college_aemail);
       col.setCollege_city(college_city);
       col.setCollege_address(college_address);
       col.setCollege_status(college_status);
       
        HttpSession session=req.getSession(true);
        CollegeDaoImple cdao=new CollegeDaoImple(DbConector.getConnection());
        boolean f1=cdao.collegeRegister(col);
        if(f1)
        {
            session.setAttribute("message", "Registration Succesfully...");
            resp.sendRedirect("registercollege.jsp");
        }
        else{
            //System.out.println("user register error...");
             session.setAttribute("message", "SomeThing Wrong On Server..");
            resp.sendRedirect("registercollege.jsp");
        }

    }
}
