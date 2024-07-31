/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modal.CompanyDtls;

/**
 *
 * @author asus
 */
public class CompanyDaoImple implements CompanyDao {

    private final Connection con;

    public CompanyDaoImple(Connection con) {
        this.con = con;
    }

    public boolean companyRegister(CompanyDtls com) {
        boolean f = false;
        try {
            String query="insert into company(company_name,company_email,company_password,company_contact,company_aemail,company_city,company_address,company_status) values(?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,com.getCompany_name());
            ps.setString(2, com.getCompany_email());
            ps.setString(3, com.getCompany_password());
            ps.setString(4, com.getCompany_contact());
            ps.setString(5, com.getCompany_aemail());
            ps.setString(6, com.getCompany_city());
            ps.setString(7, com.getCompany_address());
             ps.setString(8, com.getCompany_status());
            int i = ps.executeUpdate();
            if (i == 1) 
            {
                f = true;
            }
        } catch (SQLException e) {
            System.out.println(e);

        }
        return f;
    }

    public List<CompanyDtls> getAllCompanyName() {
        List<CompanyDtls> list=new ArrayList<CompanyDtls>();
        String company_status="Enable";
        CompanyDtls cd = null;
        try{
            String sql = "select * from company where company_status=?";
            PreparedStatement ps = con.prepareStatement(sql);
             ps.setString(1, company_status);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                cd=new CompanyDtls();
                cd.setCompany_id(rs.getInt(1));
                cd.setCompany_name(rs.getString(2));
                cd.setCompany_email(rs.getString(3));
                cd.setCompany_password(rs.getString(4));
                cd.setCompany_contact(rs.getString(5));
                cd.setCompany_aemail(rs.getString(6));
                cd.setCompany_city(rs.getString(7));
                cd.setCompany_address(rs.getString(8));
                 cd.setCompany_status(rs.getString(9));
                list.add(cd);
            }
        }catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }
    
    public boolean deleteCompany(int id) {
       boolean  f=false;
        try {
            String sql = "delete from company where company_id=?";
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

  
    public CompanyDtls login(String company_email, String company_password,String company_status) {
      CompanyDtls cd=null;
      try{
            String sql = "select * from company where company_email=? and company_password=? and company_status=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, company_email);
            ps.setString(2, company_password);
            ps.setString(3, company_status);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                cd=new CompanyDtls();
                cd.setCompany_id(rs.getInt(1));
                cd.setCompany_name(rs.getString(2));
                cd.setCompany_email(rs.getString(3));
                cd.setCompany_password(rs.getString(4));
                cd.setCompany_contact(rs.getString(5));
                cd.setCompany_aemail(rs.getString(6));
                cd.setCompany_city(rs.getString(7));
                cd.setCompany_address(rs.getString(8));
                cd.setCompany_status(rs.getString(9));
            }
        }catch (SQLException e) {
            System.out.println(e);
        }
      return cd;
    }

    
    public boolean updateProfile(String name,String email,String password,String contact,String aemail,String city,String address,int id) {
        boolean f=false;
        try {
            String sql = "update company set company_password=?,company_contact=?,company_aemail=?,company_city=?,company_address=? where company_id=? and company_name=? and company_email=?";
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

    
    public List<CompanyDtls> getCompanyRequest() {
           List<CompanyDtls> list=new ArrayList<CompanyDtls>();
        CompanyDtls cd = null;
        String status="Disable";
        try{
            String sql = "select * from company where company_status='"+status+"'";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                cd=new CompanyDtls();
                cd.setCompany_id(rs.getInt(1));
                cd.setCompany_name(rs.getString(2));
                cd.setCompany_email(rs.getString(3));
                cd.setCompany_password(rs.getString(4));
                cd.setCompany_contact(rs.getString(5));
                cd.setCompany_aemail(rs.getString(6));
                cd.setCompany_city(rs.getString(7));
                cd.setCompany_address(rs.getString(8));
                cd.setCompany_status(rs.getString(9));
                list.add(cd);
            }
        }catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

  
    public boolean requestUpdateCompany(String status,int id ) {
      boolean f=false;
      try {
        String sql = "update company set company_status=? where company_id=? ";
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
        

    @Override
    public int getRequestCountCompany() {
         String status="Disable";
        int count = 0;
       try {
            String sql = "select count(*) AS cc1 from company where company_status='"+status+"'";
           PreparedStatement ps = con.prepareStatement(sql); 
           
           ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
             count=rs.getInt("cc1");
            }
         } catch (SQLException e) {
            System.out.println(e);
        }
        
       return count;
    }

    @Override
    public int getAllCount() {
        String status="Enable";
         int count = 0;
     try {
            String sql = "select count(*) AS cc from company where company_status='"+status+"'";
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

    


