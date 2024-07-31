/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Admin;

import db.DbConector;
import dto.CollegeDaoImple;
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
public class CollegeRequestUpdate extends HttpServlet {

  
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       int id=Integer.parseInt(req.getParameter("cid"));
        String status="Enable";
        CollegeDaoImple dao=new CollegeDaoImple(DbConector.getConnection());
        HttpSession session = req.getSession(true);
        
        boolean f=dao.requestUpdateCollege( status,id);
         if (f) {
            session.setAttribute("message", "College request add successfully..");
            resp.sendRedirect("admin/requestCollege.jsp");
        } else {
            session.setAttribute("message", "SomeThing Wrong On Server..");
            resp.sendRedirect("admin/requestCollege.jsp");
         }
    }
 
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
    }


}
