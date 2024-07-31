/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Admin;

import db.DbConector;
import dto.CompanyDaoImple;
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
public class CompanyRequestUpdate extends HttpServlet {

     protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       int company_id=Integer.parseInt(req.getParameter("id"));
        String status="Enable";
        CompanyDaoImple cdao=new CompanyDaoImple(DbConector.getConnection());
        boolean f=cdao.requestUpdateCompany( status,company_id);
        HttpSession session = req.getSession();
         if (f) {
            session.setAttribute("message", "Company request add successfully..");
            resp.sendRedirect("admin/requestCompany.jsp");
        } else {
            session.setAttribute("message", "SomeThing Wrong On Server..");
            resp.sendRedirect("admin/requestCompany.jsp");
         }
    }
 
    
}
