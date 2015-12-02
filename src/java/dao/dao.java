/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.*;
import java.util.ArrayList;


/**
 *
 * @author enekey
 */
public class dao {
    private static Connection getDBConnection() {
    Connection dbConnection = null;
    try {
       Class.forName("com.mysql.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        System.out.println(e.getMessage());
    }
    try {
        dbConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/persia00_letcred","root", "1111");
        return dbConnection;
    } catch (SQLException e) {
        System.out.println(e.getMessage());
    }
    return dbConnection;
    }
    
    public static String  user_id(String user,String pass) {
     String userid= "";   
    try {
    Connection dbConnection = getDBConnection();
    Statement statement = dbConnection.createStatement();
 
    // выбираем данные с БД
    ResultSet rs = statement.executeQuery("Select id from users WHERE login='"+ user+"' AND password='"+pass+"'");
 
    // И если что то было получено то цикл while сработает   
        rs.next();   
        userid = rs.getString("id");
    
 
      

         
}
    
    
    catch (SQLException e) {
    System.out.println(e.getMessage());
}
        return  userid; 
}
      public static String  role (String user_id) {
     String role= "";   
    try {
    Connection dbConnection = getDBConnection();
    Statement statement = dbConnection.createStatement();
 
    // выбираем данные с БД
    ResultSet rs = statement.executeQuery("Select role from users WHERE id='"+ user_id+"'");
 
    // И если что то было получено то цикл while сработает   
        rs.next();   
        role = rs.getString("role");
    
 
      

         
}
    
    
    catch (SQLException e) {
    System.out.println(e.getMessage());
}
        return  role; 
}
    
        public static String  id_in_role (String user_id) {
     String id_in_role= "";   
    try {
    Connection dbConnection = getDBConnection();
    Statement statement = dbConnection.createStatement();
 
    // выбираем данные с БД
    ResultSet rs = statement.executeQuery("Select id_in_role from users WHERE id='"+ user_id+"'");
 
    // И если что то было получено то цикл while сработает   
        rs.next();   
        id_in_role = rs.getString("id_in_role");
    
 
      

         
}
    
    
    catch (SQLException e) {
    System.out.println(e.getMessage());
}
        return  id_in_role; 
}
   public static ArrayList<String> UserData(String user_id) {
   
     ArrayList<String> UserData = new ArrayList<String>();
    
     
    try {
    Connection dbConnection = getDBConnection();
    Statement statement = dbConnection.createStatement();
 
    // выбираем данные с БД
    ResultSet rs = statement.executeQuery("Select * from buyer WHERE id='1'");
 
    // И если что то было получено то цикл while сработает   
        rs.next();   
        UserData.add(rs.getString("name"));
        UserData.add(rs.getString("surname"));
        UserData.add(rs.getString("country"));
        UserData.add(rs.getString("phone"));
        UserData.add(rs.getString("email"));
        UserData.add(rs.getString("city"));
        UserData.add(rs.getString("adress"));
       
        
        
        
        
    
 
      

         
}
     
    
    
    catch (SQLException e) {
    System.out.println(e.getMessage());

    }
    
        return  UserData; 
}
     public static ArrayList<String> CredCart(String user_id) {
   
     ArrayList<String> CredCart = new ArrayList<String>();
    
     
    try {
    Connection dbConnection = getDBConnection();
    Statement statement = dbConnection.createStatement();
 
    // выбираем данные с БД
    ResultSet rs = statement.executeQuery("Select * from creditcart WHERE userid='1'");
 
    // И если что то было получено то цикл while сработает   
        while (rs.next()){   
        CredCart.add(rs.getString("cardnumber"));}
        
        
        
        
    
 
      

         
}
     
    
    
    catch (SQLException e) {
    System.out.println(e.getMessage());

    }
    
        return  CredCart; 
}
      public static String AddCreditCard(String cardholdername,String cardnumber, String expirymonth, String expiryyear, String cvv,String  userid) {
      String dsd="INSERT INTO `persia00_letcred`.`creditcart` (`cardholdername`, `cardnumber`, `expirymonth`, `expiryyear`, `cvv`, `userid`) VALUES ('"+cardholdername+"', '"+cardnumber+"', '"+expirymonth+"', '"+expiryyear+"', '"+cvv+"', '"+userid+"');";  
    try {
    Connection dbConnection = getDBConnection();
    Statement statement = dbConnection.createStatement();
 
    // выбираем данные с БД
      int i = statement.executeUpdate("INSERT INTO `persia00_letcred`.`creditcart` (`cardholdername`, `cardnumber`, `expirymonth`, `expiryyear`, `cvv`, `userid`) VALUES ('"+cardholdername+"', '"+cardnumber+"', '"+expirymonth+"', '"+expiryyear+"', '"+cvv+"', '"+userid+"');");
 
    // И если что то было получено то цикл while сработает   
         
}
    catch (SQLException e) {
    System.out.println(e.getMessage());
}
      return dsd;
      }
}
    
    

