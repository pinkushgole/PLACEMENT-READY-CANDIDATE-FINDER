/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


/**
 *
 * @author asus
 */
public class DbConector {
    
    static Connection con=null;

    static
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
           System.out.println("driver loaded");

            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/prcf", "root", "root");
            System.out.println("connected");
            if(con!=null)
            {
                System.out.println("conection is successdull");
            }
            
                   }
        catch (ClassNotFoundException e) {
            System.out.println(e);
       }
        catch (SQLException e) {
            System.out.println(e);
        }        
    }
    public static Connection getConnection()
    {
                return con;
    }
}
