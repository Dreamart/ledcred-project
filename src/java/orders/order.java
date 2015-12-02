/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


package orders;
import sms.sms.*;




/**
 *
 * @author enekey
 */

public class order { 
    public void Addorder(String cardholdername,String cardnumber,String expirymonth,String expiryyear,String cvv,String user_id1,String check,String summa,String mag,String phone){
      Integer random1 = (int)Math.random() * (100000 - 10000) + 10000;  
      Integer random2 = (int)Math.random() * (100000 - 10000) + 10000;  
      Integer random3 = (int)Math.random() * (100000 - 10000) + 10000;  
      SendSMS(phone,"ВАша покупка оформлена номер заказ:"+Integer.toString(random1)+"Вaш код:"+Integer.toString(random2));  
    }
    
}
