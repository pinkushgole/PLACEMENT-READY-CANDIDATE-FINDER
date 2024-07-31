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
import modal.StudentDtls;

/**
 *
 * @author asus
 */
public class AddStudent extends HttpServlet {

     protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("CollageHome.jsp");
    }

    
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String college_name=req.getParameter("college_name");
       String s_name=req.getParameter("s_name");
       String s_enumber=req.getParameter("s_enumber");
       String s_branch=req.getParameter("s_branch");
       String s_course=req.getParameter("s_course");
       String s_cgpa=req.getParameter("s_cgpa");
       String s_10th=req.getParameter("s_10th");
       String s_12th=req.getParameter("s_12th");
       String s_skills=req.getParameter("s_skills");
       
       StudentDtls st=new StudentDtls();
       st.setCollege_name(college_name);
       st.setS_name(s_name);
       st.setS_enumber(s_enumber);
       st.setS_branch(s_branch);
       st.setS_course(s_course);
       st.setS_cgpa(s_cgpa);
       st.setS_10th(s_10th);
       st.setS_12th(s_12th);
       st.setS_skills(s_skills);
       
        HttpSession session=req.getSession(true);
        StudentDaoImple stdao=new StudentDaoImple(DbConector.getConnection());
        boolean f=stdao.studentAdd(st);
         if(f)
        {
            StudentDtls st1=new StudentDtls();
            session.setAttribute("studentobj", st1);
            session.setAttribute("message", "Student Add Succesfully...");
            resp.sendRedirect("Addstudent.jsp");
        }
        else{
            //System.out.println("user register error...");
             session.setAttribute("message", "SomeThing Wrong On Server..");
            resp.sendRedirect("Addstudent.jsp");
        }
   }

   
}
