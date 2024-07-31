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
public class CollegeDtls {
    
    int college_id;
    String college_name; 
    String college_email;
    String college_password;
    String college_contact;
    String college_aemail;
    String college_city;
    String college_address;
    String college_status;

    @Override
    public String toString() {
        return "CollegeDtls{" + "college_id=" + college_id + ", college_name=" + college_name + ", college_email=" + college_email + ", college_password=" + college_password + ", college_contact=" + college_contact + ", college_aemail=" + college_aemail + ", college_city=" + college_city + ", college_address=" + college_address + ", college_status" + college_status +'}';
    }

    public String getCollege_status() {
        return college_status;
    }

    public void setCollege_status(String college_status) {
        this.college_status = college_status;
    }

    public int getCollege_id() {
        return college_id;
    }

    public void setCollege_id(int college_id) {
        this.college_id = college_id;
    }

    public String getCollege_name() {
        return college_name;
    }

    public void setCollege_name(String college_name) {
        this.college_name = college_name;
    }

    public String getCollege_email() {
        return college_email;
    }

    public void setCollege_email(String college_email) {
        this.college_email = college_email;
    }

    public String getCollege_password() {
        return college_password;
    }

    public void setCollege_password(String college_password) {
        this.college_password = college_password;
    }

    public String getCollege_contact() {
        return college_contact;
    }

    public void setCollege_contact(String college_contact) {
        this.college_contact = college_contact;
    }

    public String getCollege_aemail() {
        return college_aemail;
    }

    public void setCollege_aemail(String college_aemail) {
        this.college_aemail = college_aemail;
    }

    public String getCollege_city() {
        return college_city;
    }

    public void setCollege_city(String college_city) {
        this.college_city = college_city;
    }

    public String getCollege_address() {
        return college_address;
    }

    public void setCollege_address(String college_address) {
        this.college_address = college_address;
    }

        
}
