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
public class StudentDtls {
    int s_id;
    String college_name;
    String s_name;
    String s_enumber;
    String s_branch;
    String s_course;
    String s_cgpa;
    String s_10th;
    String s_12th;
    String s_skills;

    @Override
    public String toString() {
        return "StudentDtls{" + "s_id=" + s_id + ", college_name=" + college_name + ", s_name=" + s_name + ", s_enumber=" + s_enumber + ", s_branch=" + s_branch + ", s_course=" + s_course + ", s_cgpa=" + s_cgpa + ", s_10th=" + s_10th + ", s_12th=" + s_12th + ", s_skills=" + s_skills + '}';
    }

    public int getS_id() {
        return s_id;
    }

    public void setS_id(int s_id) {
        this.s_id = s_id;
    }

    public String getCollege_name() {
        return college_name;
    }

    public void setCollege_name(String college_name) {
        this.college_name = college_name;
    }

    public String getS_name() {
        return s_name;
    }

    public void setS_name(String s_name) {
        this.s_name = s_name;
    }

    public String getS_enumber() {
        return s_enumber;
    }

    public void setS_enumber(String s_enumber) {
        this.s_enumber = s_enumber;
    }

    public String getS_branch() {
        return s_branch;
    }

    public void setS_branch(String s_branch) {
        this.s_branch = s_branch;
    }

    public String getS_course() {
        return s_course;
    }

    public void setS_course(String s_course) {
        this.s_course = s_course;
    }

    public String getS_cgpa() {
        return s_cgpa;
    }

    public void setS_cgpa(String s_cgpa) {
        this.s_cgpa = s_cgpa;
    }

    public String getS_10th() {
        return s_10th;
    }

    public void setS_10th(String s_10th) {
        this.s_10th = s_10th;
    }

    public String getS_12th() {
        return s_12th;
    }

    public void setS_12th(String s_12th) {
        this.s_12th = s_12th;
    }

    public String getS_skills() {
        return s_skills;
    }

    public void setS_skills(String s_skills) {
        this.s_skills = s_skills;
    }
    
    
}
