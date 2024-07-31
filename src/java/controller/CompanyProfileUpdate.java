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
public class CompanyProfileUpdate extends HttpServlet {

     protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id=Integer.parseInt(req.getParameter("company_id"));
        String name=req.getParameter("company_name");
        String email=req.getParameter("company_email");
        String password=req.getParameter("company_password");
        String contact=req.getParameter("company_contact");
        String aemail=req.getParameter("company_aemail");
        String city=req.getParameter("company_city");
        String address=req.getParameter("company_address");
        
        
       HttpSession session=req.getSession(true);
       
       CompanyDaoImple cdao=new CompanyDaoImple(DbConector.getConnection());
       boolean f=cdao.updateProfile(name,email,password,contact,aemail,city,address,id);
       if(f)
        {
            session.setAttribute("message", "Updatetion Succesfully...");
            resp.sendRedirect("editprofilecompany.jsp");
        }
        else{
            //System.out.println("user register error...");
             session.setAttribute("message", "SomeThing Wrong On Server..");
            resp.sendRedirect("editprofilecompany.jsp");
        }
    }
}
