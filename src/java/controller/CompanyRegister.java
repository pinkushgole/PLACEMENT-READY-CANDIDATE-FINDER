/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import db.DbConector;
import dto.CompanyDaoImple;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modal.CompanyDtls;

/**
 *
 * @author asus
 */
public class CompanyRegister extends HttpServlet {


    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("Register.jsp");
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String company_name=req.getParameter("company_name");
       String company_email=req.getParameter("company_email");
       String company_password=req.getParameter("company_password");
       String company_contact=req.getParameter("company_contact");
       String company_aemail=req.getParameter("company_aemail");
       String c_location=req.getParameter("company_location");
       String company_city=req.getParameter("company_city");
       String c_state=req.getParameter("company_state");
       String c_pincode=req.getParameter("company_pincode");
       String company_address=c_location + "," + c_state + "," +c_pincode;
       String company_status="Disable";
       
       CompanyDtls com=new CompanyDtls();
       com.setCompany_name(company_name);
       com.setCompany_email(company_email);
       com.setCompany_password(company_password);
       com.setCompany_contact(company_contact);
       com.setCompany_aemail(company_aemail);
       com.setCompany_city(company_city);
       com.setCompany_address(company_address);
       com.setCompany_status(company_status);
       
       HttpSession session=req.getSession(true);
       
       CompanyDaoImple cdao=new CompanyDaoImple(DbConector.getConnection());
       boolean f1=cdao.companyRegister(com);
       if(f1)
        {
            session.setAttribute("message", "Registration Succesfully...");
            resp.sendRedirect("registercompany.jsp");
        }
        else{
            //System.out.println("user register error...");
             session.setAttribute("message", "SomeThing Wrong On Server..");
            resp.sendRedirect("index.jsp");
        }
       
    }

  
}