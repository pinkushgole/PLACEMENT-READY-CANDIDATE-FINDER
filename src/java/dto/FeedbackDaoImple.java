/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import modal.FB;

/**
 *
 * @author asus
 */
public class FeedbackDaoImple implements FeedbackDao {

   private final Connection con;

    public FeedbackDaoImple(Connection con) {
        this.con = con;
    }
   
    public boolean feedbacksend(FB fb) {
      boolean f=false;
        try {
            String query="insert into feedback values(?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,fb.getFname());
            ps.setString(2,fb.getFemail());
            ps.setString(3,fb.getFmessage());
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
            } catch (SQLException e) {
            System.out.println(e);
        }
      return f;
    }
    
    public boolean contactAdmin(String name,String email,String contact,String message)
    {
        boolean f=false;
      try {  
        String query="insert into contact values(?,?,?,?)";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, name);
        ps.setString(2,email);
        ps.setString(3,contact);
        ps.setString(4,message);
        int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
            } catch (SQLException e) {
            System.out.println(e);
        }

        return f;
    }
}
