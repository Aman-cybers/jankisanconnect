/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.

 */
package datachecker;
import java.sql.*;
/**
 *
 * @author amans
 */
public class dao {
    public static final ResultSet getProfileData(String h){
        ResultSet rs = null;
        
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connn = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmer", "root", "aman");
            Statement sti = connn.createStatement();
            
            rs = sti.executeQuery("SELECT * FROM farmerregistration WHERE username = '"+h+"'");
        }
        catch (Exception e){
        System.out.println(e);
        }
        return rs;
   }
    
}
