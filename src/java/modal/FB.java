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
public class FB {
    String fname;
    String femail;
    String fmessage;

    public FB() {
    }

    @Override
    public String toString() {
        return "FB{" + "fname=" + fname + ", femail=" + femail + ", fmessage=" + fmessage + '}';
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getFemail() {
        return femail;
    }

    public void setFemail(String femail) {
        this.femail = femail;
    }

    public String getFmessage() {
        return fmessage;
    }

    public void setFmessage(String fmessage) {
        this.fmessage = fmessage;
    }
    
    
    
}
