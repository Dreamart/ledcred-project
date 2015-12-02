<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import  = " static dao.dao.user_id" %>
﻿
<!DOCTYPE html>

<html>
    <head>
         <jsp:include page="header.jsp"  />
       
 
  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LetCred</title>
    </head>
    <body>
       <div id="login_box">
           


        <form role="form" class="form-horizontal" method="post" action="checkout.jsp">
             <div class="form-group">
               <label class="col-sm-2 control-label" for="mag">Магазин</label>
               <div class="col-sm-10">
              <input class="form-control" id= "mag" type="text" placeholder="mag" name="mag" value="" />
               </div>
                </div>  
             <div class="form-group">
                        <label class="col-sm-2 control-label" for="summa">Сумма</label>
                         <div class="col-sm-10">
                       <input class="form-control" id= "pass" type="text" placeholder="summa" name="summa" value="" />
                        </div>
                        <label class="col-sm-2 control-label" for="summa">Номер заказа</label>
                         <div class="col-sm-10">
                       <input class="form-control" id= "check" type="text" placeholder="check" name="check" value="" />
                        </div>
                    </div>
            <div class="col-sm-offset-2 col-sm-10">
                        <input class="btn btn-default" type="submit" value="перейти к оплате" />
                       
                       
                
                         </DIV>
              
        </form>
       </div>        
        
    </body>
</html>
