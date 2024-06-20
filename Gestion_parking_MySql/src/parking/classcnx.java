package parking;

import javax.swing.*;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.Connection;


public class classcnx{
     Connection conn =null;
     public static Connection ConnecrDb(){
         try {
             Class.forName("com.mysql.cj.jdbc.Driver");
             Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/bddparking","root","");
             return conn;
             
             
         } catch (Exception e) {
             JOptionPane.showMessageDialog(null, e);
               return null;
         }
       
         
    
         
      }
}
