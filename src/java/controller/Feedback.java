/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import db.DbConector;
import dto.FeedbackDaoImple;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modal.FB;

/**
 *
 * @author asus
 */
public class Feedback extends HttpServlet {

     protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String fname=req.getParameter("fname");
        String femail=req.getParameter("femail");
        String fmessage=req.getParameter("fmessage");
        
        FB fb=new FB();
        fb.setFname(fname);
        fb.setFemail(femail);
        fb.setFmessage(fmessage);
        
        HttpSession session=req.getSession(true);
        FeedbackDaoImple fdao=new FeedbackDaoImple(DbConector.getConnection());
        boolean f2=fdao.feedbacksend(fb);
        if(f2)
        {
            session.setAttribute("message", "Feedback Submit Succesfully...");
            resp.sendRedirect("index.jsp");
        }
        else{
            //System.out.println("user register error...");
             session.setAttribute("message", "SomeThing Wrong On Server..");
            resp.sendRedirect("index.jsp");
        }
    }

   }
