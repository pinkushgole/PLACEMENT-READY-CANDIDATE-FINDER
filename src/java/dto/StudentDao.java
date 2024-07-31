/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.util.List;
import modal.StudentDtls;

/**
 *
 * @author asus
 */
public interface StudentDao {
    
    public boolean studentAdd(StudentDtls st);
    
    public List<StudentDtls> getAllStudent(String college_name);
    
    public List<StudentDtls> getSearchStudent(String s_branch,String s_course,String s_cgpa,String s_10th,String s_12th,String college_name);
    
    public boolean deleteStudent(int id);
    
    public boolean updateStudent(String sname,String enumber,String course,String branch,String cgpa,String s10th,String s12th,String skills,String cname,int id);

   public List<StudentDtls> getStudentBranchName();
   
   public List<StudentDtls> getStudentCourseName();
}
