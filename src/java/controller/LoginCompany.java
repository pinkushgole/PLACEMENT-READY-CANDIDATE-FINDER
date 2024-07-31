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
public class LoginCompany extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("logincompany.jsp");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String company_email = req.getParameter("company_email");
        String company_password = req.getParameter("company_password");
        String company_status="Enable";
        CompanyDaoImple dao = new CompanyDaoImple(DbConector.getConnection());
        HttpSession session = req.getSession(true);
        CompanyDtls cd=new  CompanyDtls();
        cd = dao.login(company_email, company_password ,company_status);
        if (cd != null) {
            session.setAttribute("companyobj", cd);
            session.setAttribute("message", "your login succesfull....");
            resp.sendRedirect("Companyhome.jsp");
        } else {
            session.setAttribute("message", "Email & password Invaild....");
            resp.sendRedirect("logincompany.jsp");
        }
    }

}
