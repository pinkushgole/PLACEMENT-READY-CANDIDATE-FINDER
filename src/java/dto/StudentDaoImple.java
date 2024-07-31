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
import modal.StudentDtls;

/**
 *
 * @author asus
 */
public class StudentDaoImple implements StudentDao {
    
     private final Connection con;

    public StudentDaoImple(Connection con) {
        this.con = con;
    }

    
    public boolean studentAdd(StudentDtls st) {
       boolean f=false;
        try {
        String query = "insert into student(college_name,s_name,s_enumber,s_branch,s_course,s_cgpa,s_10th,s_12th,s_skills) values(?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, st.getCollege_name());
            ps.setString(2, st.getS_name());
            ps.setString(3, st.getS_enumber());
            ps.setString(4, st.getS_branch());
            ps.setString(5, st.getS_course());
            ps.setString(6, st.getS_cgpa());
            ps.setString(7, st.getS_10th());
            ps.setString(8, st.getS_12th());
            ps.setString(9, st.getS_skills());
             int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (SQLException e) {
            System.out.println(e);

        }
       return f;
    }

   
    public List<StudentDtls> getAllStudent(String college_name) {
       List<StudentDtls> list=new ArrayList<StudentDtls>();
       StudentDtls st=null;
       try {
            String sql = "select * from student where college_name=?";
            
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, college_name);
            ResultSet rs = ps.executeQuery();
             while (rs.next()) {
             st=new StudentDtls();
             st.setS_id(rs.getInt(1));
             st.setCollege_name(rs.getString(2));
             st.setS_name(rs.getString(3));
             st.setS_enumber(rs.getString(4));
             st.setS_branch(rs.getString(5));
             st.setS_course(rs.getString(6));
             st.setS_cgpa(rs.getString(7));
             st.setS_10th(rs.getString(8));
             st.setS_12th(rs.getString(9));
             st.setS_skills(rs.getString(10));
             list.add(st);
             }
             } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    
    public List<StudentDtls> getSearchStudent(String s_branch, String s_course, String s_cgpa, String s_10th, String s_12th,String college_name) {
       List<StudentDtls> list=new ArrayList<StudentDtls>();
       StudentDtls st=null;
       try {
            String sql = "select * from student where college_name=? and s_branch=? and s_course=? and s_cgpa>=? and s_10th>=? and s_12th>=? ";
            
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, college_name);
            ps.setString(2, s_branch);
            ps.setString(3, s_course);
            ps.setString(4, s_cgpa);
            ps.setString(5, s_10th);
            ps.setString(6, s_12th);
//  
            ResultSet rs = ps.executeQuery();
             while (rs.next()) {
             st=new StudentDtls();
             st.setS_id(rs.getInt(1));
             st.setCollege_name(rs.getString(2));
             st.setS_name(rs.getString(3));
             st.setS_enumber(rs.getString(4));
             st.setS_branch(rs.getString(5));
             st.setS_course(rs.getString(6));
             st.setS_cgpa(rs.getString(7));
             st.setS_10th(rs.getString(8));
             st.setS_12th(rs.getString(9));
             st.setS_skills(rs.getString(10));
             list.add(st);
             }
             } catch (SQLException e) {
            System.out.println(e);
        }
     return list;
    
    }

   
    public boolean deleteStudent(int id) {
        boolean f=false;
         try {
            String sql = "delete from student where s_id=?";
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

   
    public boolean updateStudent(String sname,String enumber,String course,String branch,String cgpa,String s10th,String s12th,String skills,String cname,int id) {
        boolean f=false;
         try {
             String sql = "Update student set s_name=?,s_enumber=?,s_branch=?,s_course=?,s_cgpa=?,s_10th=?,s_12th=?,s_skills=? where college_name=? and s_id=?";
           PreparedStatement ps = con.prepareStatement(sql); 
           ps.setString(1,sname);
           ps.setString(2,enumber);
           ps.setString(3,course);
           ps.setString(4,branch);
           ps.setString(5,cgpa);
           ps.setString(6,s10th);
           ps.setString(7,s12th);
           ps.setString(8,skills);
           ps.setString(9,cname);
           ps.setInt(10, id);
           int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
             } catch (SQLException e) {
            System.out.println(e);
        }
        return f;
    }


    public List<StudentDtls> getStudentBranchName() {
       List <StudentDtls> list=new ArrayList<StudentDtls>();
       StudentDtls st=null;
        try {
            String sql = "select distinct(s_branch) from student";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                st=new StudentDtls();
                st.setS_branch(rs.getString(1));
                list.add(st);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
       return list;
    }

 
    public List<StudentDtls> getStudentCourseName() {
     List <StudentDtls> list=new ArrayList<StudentDtls>();
       StudentDtls st=null;
        try {
            String sql = "select distinct(s_course) from student";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                st=new StudentDtls();
                st.setS_course(rs.getString(1));
                list.add(st);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
       return list;
    }
}
