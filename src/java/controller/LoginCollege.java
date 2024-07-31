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
public class LoginCollege extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("logincollage.jsp");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String college_email = req.getParameter("college_email");
        String college_password = req.getParameter("college_password");
        String college_status="Enable";
        CollegeDaoImple dao = new CollegeDaoImple(DbConector.getConnection());
        HttpSession session = req.getSession(true);

        if ("pinkush@gmail.com".equals(college_email) && "12345".equals(college_password)) {
            CollegeDtls cold = new CollegeDtls();
            session.setAttribute("collegeobj", cold);
            resp.sendRedirect("admin/adminHome.jsp");
        } else {
            CollegeDtls cold = dao.college_login(college_email, college_password,college_status);
            if (cold != null) {
                session.setAttribute("collegeobj", cold);
                 session.setAttribute("message", "login succesfully...");
                resp.sendRedirect("CollageHome.jsp");
            } else {
                session.setAttribute("message", "Email & password Invaild....");
                resp.sendRedirect("logincollage.jsp");
            }

        }
    }
}
