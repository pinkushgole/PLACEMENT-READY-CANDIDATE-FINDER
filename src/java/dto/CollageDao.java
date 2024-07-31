/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.util.List;
import modal.CollegeDtls;

/**
 *
 * @author asus
 */
public interface CollageDao {
    
    public boolean collegeRegister(CollegeDtls col);
    
    public List<CollegeDtls> getAllCollegeName();
   
    public boolean colllegeDelete(int id);
    
    public CollegeDtls college_login(String college_email,String college_password,String college_status);
    
    public List<CollegeDtls> getCollegeName();
    
    public List<CollegeDtls> getRequestCollege();
    
    public boolean requestUpdateCollege(String status,int id);
    
    public boolean getCollegeProfileUpdate(String name,String email,String password, String contact,String aemail, String city, String address,int id);

    public int getRequestCountCollege();
    
    public int getTotalCountCollege();
}
