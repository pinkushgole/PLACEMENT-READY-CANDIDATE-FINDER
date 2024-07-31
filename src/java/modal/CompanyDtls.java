/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modal;

/**
 *
 * @author asus
 */
public class CompanyDtls {
    
    int company_id;
    String company_name; 
    String company_email;
    String company_password;
    String company_contact;
    String company_aemail;
    String company_city;
    String company_address;
    String company_status;

    public String getCompany_status() {
        return company_status;
    }

    public void setCompany_status(String company_status) {
        this.company_status = company_status;
    }
    @Override
    public String toString() {
        return "CompanyDtls{" + "company_id=" + company_id + ", company_name=" + company_name + ", company_email=" + company_email + ", company_password=" + company_password + ", company_contact=" + company_contact + ", company_aemail=" + company_aemail + ", company_city=" + company_city + ", company_address=" + company_address + ", company_status" +company_status+ '}';
    }
    
    

    public int getCompany_id() {
        return company_id;
    }

    public void setCompany_id(int company_id) {
        this.company_id = company_id;
    }

    public String getCompany_name() {
        return company_name;
    }

    public void setCompany_name(String company_name) {
        this.company_name = company_name;
    }

    public String getCompany_email() {
        return company_email;
    }

    public void setCompany_email(String company_email) {
        this.company_email = company_email;
    }

    public String getCompany_password() {
        return company_password;
    }

    public void setCompany_password(String company_password) {
        this.company_password = company_password;
    }

    public String getCompany_contact() {
        return company_contact;
    }

    public void setCompany_contact(String company_contact) {
        this.company_contact = company_contact;
    }

    public String getCompany_aemail() {
        return company_aemail;
    }

    public void setCompany_aemail(String company_aemail) {
        this.company_aemail = company_aemail;
    }

    public String getCompany_city() {
        return company_city;
    }

    public void setCompany_city(String company_city) {
        this.company_city = company_city;
    }

    public String getCompany_address() {
        return company_address;
    }

    public void setCompany_address(String company_address) {
        this.company_address = company_address;
    }
    
}
