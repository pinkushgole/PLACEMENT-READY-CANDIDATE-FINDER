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
public class DeleteStudent extends HttpServlet {

   
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      int id=Integer.parseInt(req.getParameter("id"));
      HttpSession session = req.getSession();
      StudentDaoImple st=new StudentDaoImple(DbConector.getConnection());
      boolean f=st.deleteStudent(id);
       if (f) {
            session.setAttribute("message", "Student Delete successfully..");
            resp.sendRedirect("Totalstudent.jsp");
        } else {
            session.setAttribute("message", "SomeThing Wrong On Server..");
            resp.sendRedirect("Totalstudent.jsp");
         }
    }

    
    
}
