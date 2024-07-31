/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;
import modal.FB;

/**
 *
 * @author asus
 */
public interface FeedbackDao {
    
    public boolean feedbacksend(FB fb);
    
    public boolean contactAdmin(String name,String email,String contact,String message);
}
