
﻿<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import = "java.util.*" %>      

<%@page import = " static dao.dao.UserData" %>
﻿
﻿<% String User_id = session.getAttribute("userid").toString();
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
            response.sendRedirect("index.jsp");
    }
%>
 <%   ArrayList<String> UserData1 = UserData(session.getAttribute("userid").toString());%>
 
 Здраствуйте <%=UserData1.get(1)%> <%=UserData1.get(0)%>
<html>
    <head>
         <jsp:include page="header.jsp"  />
           <style type="text/css">
         body {
  padding-top: 50px;
}
.starter-template {
  padding: 40px 15px;
  text-align: center;
} 
  </style>
    </head>
   <body>


<a href='logout.jsp'>Выйти</a>
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">LetCred</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
                     <li class="active"><a href="home.jsp">Профиль</a></li>
            <li><a href="paymentinfo.jsp">Платежные данные</a></li>
            <li><a href="#contact">Платежи</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

    <div class="container">

      <div class="starter-template">
       <table class="table" border="1">
   <caption>Личные данные</caption>
  
   <tr><td>Email</td><td><%=UserData1.get(4)%></td></tr>
   <tr><td>Имя</td><td><%=UserData1.get(0)%></td></tr>
   <tr><td>Фамилия</td><td><%=UserData1.get(1)%></td></tr>
   <tr><td>Страна</td><td><%=UserData1.get(2)%></td></tr>
   <tr><td>Город</td><td><%=UserData1.get(5)%></td></tr>
   <tr><td>Адрес</td><td><%=UserData1.get(6)%></td></tr>
   <tr><td>Страна</td><td><%=UserData1.get(2)%></td></tr>
   <tr><td>Телефон</td><td><%=UserData1.get(3)%></td></tr>
  
  </table>
      </div>
  

    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
   
  </body>
</html>
 