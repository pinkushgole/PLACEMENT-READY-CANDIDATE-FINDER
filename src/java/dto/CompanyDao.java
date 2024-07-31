/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.util.List;
import modal.CompanyDtls;

/**
 *
 * @author asus
 */
public interface CompanyDao {
    
   public boolean companyRegister(CompanyDtls com); 
   
   public List<CompanyDtls> getAllCompanyName();
   
   public boolean deleteCompany(int id); 
   
   public CompanyDtls login(String company_email,String company_password,String compnay_status);
   
   public boolean updateProfile(String name,String email,String password,String contact,String aemail,String city,String address,int id);
   
   public List<CompanyDtls> getCompanyRequest();
   
   public boolean requestUpdateCompany(String status,int id);
   
   public int getRequestCountCompany();
   
   public int getAllCount();
}
