package sms;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author enekey
 */
public class sms {
       private static Connection getDBConnection() {
    Connection dbConnection = null;
    try {
       Class.forName("com.mysql.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        System.out.println(e.getMessage());
    }
    try {
        dbConnection = DriverManager.getConnection("jdbc:mysql://94.249.146.189:3306/users","hookahworld", "5s7z6");
        return dbConnection;
    } catch (SQLException e) {
        System.out.println(e.getMessage());
    }
    return dbConnection;
    }
     
       public void  SendSMS(String phone,String SendText){
     
    try {
    Connection dbConnection = getDBConnection();
    Statement statement = dbConnection.createStatement();
 
    // выбираем данные с БД
       statement.executeUpdate("INSERT INTO `users`.`hookahworld` (`number`, `sign`, `message`) VALUES ('"+phone+"', 'HookahWorld', '"+SendText+"');");
 
    // И если что то было получено то цикл while сработает   
         
}
    catch (SQLException e) {
    System.out.println(e.getMessage());
}
     
      }
       
       }
