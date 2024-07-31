/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import db.DbConector;
import dto.StudentDaoImple;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author asus
 */
public class UpdateStudent extends HttpServlet {
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
     
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id=Integer.parseInt(req.getParameter("id"));
         String cname=req.getParameter("cname");
        String sname=req.getParameter("sname");
        String enumber=req.getParameter("enumber");
        String course=req.getParameter("course");
        String branch=req.getParameter("branch");
        String cgpa=req.getParameter("cgpa");
        String s10th=req.getParameter("s10th");
        String s12th=req.getParameter("s12th");
        String skills=req.getParameter("skills");
        
        HttpSession session = req.getSession();
        
        StudentDaoImple sdao=new StudentDaoImple(DbConector.getConnection());
        boolean f=sdao.updateStudent(sname,enumber,course,branch,cgpa,s10th,s12th,skills,cname,id);
         if(f)
        {
            session.setAttribute("message", "Updatetion Succesfully...");
            resp.sendRedirect("StudentEdit.jsp");
        }
        else{
            //System.out.println("user register error...");
             session.setAttribute("message", "SomeThing Wrong On Server..");
            resp.sendRedirect("StudentEdit.jsp");
        }
    }
}
