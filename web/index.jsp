<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import  = " static dao.dao.user_id" %>
﻿
<!DOCTYPE html>

<html>
    <head>
         <jsp:include page="header.jsp"  />
       
 <style type="text/css">

 </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LetCred</title>
    </head>
    <body>
       <div id="login_box">
           
﻿<%
    if ((session.getAttribute("userid") != null) && (session.getAttribute("userid") != "")) {
     response.sendRedirect("home.jsp");
    }
%>
           <%

    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String user_id1 = user_id(userid,pwd);
    if (userid!=null){
    if (user_id1!="") {
        session.setAttribute("userid", user_id1);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("home.jsp");
    } else {
        
        out.println("Неверный пароль!");
           
    }
}
%>
        <form role="form" class="form-horizontal" method="post" action="index.jsp">
             <div class="form-group">
               <label class="col-sm-2 control-label" for="uname">Логин</label>
               <div class="col-sm-10">
              <input class="form-control" id= "uname" type="text" placeholder="Login" name="uname" value="" />
               </div>
                </div>  
             <div class="form-group">
                        <label class="col-sm-2 control-label" for="pass">Пароль</label>
                         <div class="col-sm-10">
                       <input class="form-control" id= "pass" type="password" placeholder="Password" name="pass" value="" />
                        </div>
                    </div>
            <div class="col-sm-offset-2 col-sm-10">
                        <input class="btn btn-default" type="submit" value="Войти" />
                       
                         <a class="btn btn-default" href="reg.jsp">Регистрация</a>
                
                         </DIV>
              
        </form>
       </div>        
        
    </body>
</html>
