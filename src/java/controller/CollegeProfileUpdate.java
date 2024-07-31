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
import modal.CompanyDtls;

/**
 *
 * @author asus
 */
public class CollegeProfileUpdate extends HttpServlet {

    
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id=Integer.parseInt(req.getParameter("id"));
        String name=req.getParameter("name");
        String email=req.getParameter("email");
        String password=req.getParameter("password");
        String contact=req.getParameter("contact");
        String aemail=req.getParameter("aemail");
        String address=req.getParameter("address");
         String city=req.getParameter("city");
        System.out.println(id+" "+name+" "+email+" "+password+" "+contact);
        
        HttpSession session=req.getSession(true);
        
        CollegeDaoImple cdao=new CollegeDaoImple(DbConector.getConnection());
        boolean f=cdao.getCollegeProfileUpdate(name,email,password,contact,aemail,city,address,id);
         if(f)
        {
            session.setAttribute("message", "Updatetion Succesfully...");
            resp.sendRedirect("editprofilecollege.jsp");
        }
        else{
            //System.out.println("user register error...");
             session.setAttribute("message", "update SomeThing Wrong On Server..");
            resp.sendRedirect("editprofilecollege.jsp");
        }
    }
  
}
