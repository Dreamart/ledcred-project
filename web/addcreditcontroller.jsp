<%@ page import ="java.sql.*" %>
<%@ page import  = " static dao.dao.user_id" %>
﻿<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>      
<%@ page import  = " static dao.dao.user_id" %>
<%@ page import  = "static dao.dao.AddCreditCard" %>
<%@page import = " static dao.dao.UserData" %>
﻿<%
  String cardholdername = request.getParameter("cardholdername");
  String cardnumber = request.getParameter("cardnumber");    
  String expirymonth = request.getParameter("expirymonth");    
   String expiryyear = request.getParameter("expiryyear");    
    String cvv = request.getParameter("cvv");    
    String user_id1 = session.getAttribute("userid").toString();
   String as = AddCreditCard(cardholdername,cardnumber,expirymonth,expiryyear,cvv,user_id1 );
        response.sendRedirect("paymentinfo.jsp");
%>
  

