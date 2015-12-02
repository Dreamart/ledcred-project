<%@ page import ="java.sql.*" %>
<%@ page import  = " static dao.dao.user_id" %>
﻿<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
         <jsp:include page="header.jsp"  />
    </head>      
    <div id="login_box">
<%

    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String user_id1 = user_id(userid,pwd);
   
    if (user_id1!="") {
        session.setAttribute("userid", user_id1);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        
        out.println("Invalid password <a href='index.jsp'>try again</a>"+user_id1+"zdsdf");
           
    }
%>
</div>
</html>