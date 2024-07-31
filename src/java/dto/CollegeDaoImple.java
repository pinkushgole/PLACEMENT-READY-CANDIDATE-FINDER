/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;
import modal.CollegeDtls;

/**
 *
 * @author asus
 */
public class CollegeDaoImple implements CollageDao {

    private final Connection con;
    
    
    public CollegeDaoImple(Connection con) {
        this.con = con;
    }

    public boolean collegeRegister(CollegeDtls col) {
        boolean f = false;
        try {
            String query = "insert into college(college_name,college_email,college_password,college_contact,college_aemail,college_city,college_address,college_status) values(?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, col.getCollege_name());
            ps.setString(2, col.getCollege_email());
            ps.setString(3, col.getCollege_password());
            ps.setString(4, col.getCollege_contact());
            ps.setString(5, col.getCollege_aemail());
            ps.setString(6, col.getCollege_city());
            ps.setString(7, col.getCollege_address());
            ps.setString(8, col.getCollege_status());
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (SQLException e) {
            System.out.println(e);

        }
        return f;
    }

    public List<CollegeDtls> getAllCollegeName() {
        List<CollegeDtls> list = new ArrayList<CollegeDtls>();
        String college_status="Enable";
        CollegeDtls cd = null;
        try {
            String sql = "select * from college where college_status=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, college_status);
            
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                cd=new CollegeDtls();
                cd.setCollege_id(rs.getInt(1));
                cd.setCollege_name(rs.getString(2));
                cd.setCollege_email(rs.getString(3));
                cd.setCollege_password(rs.getString(4));
                cd.setCollege_contact(rs.getString(5));
                cd.setCollege_aemail(rs.getString(6));
                cd.setCollege_city(rs.getString(7));
                cd.setCollege_address(rs.getString(8));
                cd.setCollege_status(rs.getString(9));
                list.add(cd);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    
    public boolean colllegeDelete(int id) {
        boolean  f=false;
        try {
            String sql = "delete from college where college_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
       return f;
    }

   
    public CollegeDtls college_login(String college_email, String college_password ,String college_status) {
      CollegeDtls cd=null;
       try {
            String sql = "select * from college where college_email=? and college_password=? and college_status=?";
            PreparedStatement ps = con.prepareStatement(sql);
             ps.setString(1, college_email);
              ps.setString(2, college_password);
             ps.setString(3, college_status);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                cd=new CollegeDtls();
                cd.setCollege_id(rs.getInt(1));
                cd.setCollege_name(rs.getString(2));
                cd.setCollege_email(rs.getString(3));
                cd.setCollege_password(rs.getString(4));
                cd.setCollege_contact(rs.getString(5));
                cd.setCollege_aemail(rs.getString(6));
                cd.setCollege_city(rs.getString(7));
                cd.setCollege_address(rs.getString(8));
                cd.setCollege_status(rs.getString(9));
              
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
       return cd;
    }

   
    public List<CollegeDtls> getCollegeName() {
         List<CollegeDtls> list = new ArrayList<CollegeDtls>();
        CollegeDtls cd = null;
        try {
            String sql = "select college_name from college";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                cd=new CollegeDtls();
                cd.setCollege_name(rs.getString(1));
                list.add(cd);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

   
    public List<CollegeDtls> getRequestCollege() {
        List<CollegeDtls> list = new ArrayList<CollegeDtls>();
        String status="Disable";
        CollegeDtls cd = null;
        try {
            String sql = "select * from college where college_status='"+status+"'";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                cd=new CollegeDtls();
                cd.setCollege_id(rs.getInt(1));
                cd.setCollege_name(rs.getString(2));
                cd.setCollege_email(rs.getString(3));
                cd.setCollege_password(rs.getString(4));
                cd.setCollege_contact(rs.getString(5));
                cd.setCollege_aemail(rs.getString(6));
                cd.setCollege_city(rs.getString(7));
                cd.setCollege_address(rs.getString(8));
                cd.setCollege_status(rs.getString(9));
                list.add(cd);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

  
    public boolean requestUpdateCollege( String status,int id ) {
         boolean f=false;
       try {
            String sql = "Update college set college_status=? where college_id=?";
           PreparedStatement ps = con.prepareStatement(sql); 
           ps.setString(1, status);
            ps.setInt(2, id);
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
       } catch (SQLException e) {
            System.out.println(e);
        }
       return f;
    }

   
    public boolean getCollegeProfileUpdate(String name,String email,String password,String contact,String aemail,String city,String address,int id) {
        boolean f=false;
        try {
            String sql = "Update college set college_password=? , college_contact=?,college_aemail=?,college_city=?,college_address=? where college_id=? and college_name=? and college_email=?";
           PreparedStatement ps = con.prepareStatement(sql); 
           ps.setString(1, password);
           ps.setString(2, contact);
           ps.setString(3, aemail);
           ps.setString(4,city);
           ps.setString(5, address);
           ps.setInt(6, id);
           ps.setString(7, name);
           ps.setString(8, email);
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
       } catch (SQLException e) {
            System.out.println(e);
        }
       return f;
    }

    public int getRequestCountCollege() {
        String status="Disable";
        int count = 0;
       try {
            String sql = "select count(*) AS cc from college where college_status='"+status+"'";
           PreparedStatement ps = con.prepareStatement(sql); 
           
           ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
             count=rs.getInt("cc");
            }
         } catch (SQLException e) {
            System.out.println(e);
        }
        
       return count;

    }

  
    public int getTotalCountCollege() {
         String status="Enable";
         int count = 0;
     try {
            String sql = "select count(*) AS cc from college where college_status='"+status+"'";
           PreparedStatement ps = con.prepareStatement(sql); 
           
           ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
             count=rs.getInt("cc");
            }

         } catch (SQLException e) {
            System.out.println(e);
        }
       return count;
    }

}
