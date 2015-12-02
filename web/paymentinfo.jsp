
﻿<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.*" %>
<%@ page import = "java.util.ArrayList" %>      
<%@ page import  = " static dao.dao.user_id" %>
<%@page import = " static dao.dao.CredCart" %>
﻿
﻿<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
            response.sendRedirect("index.jsp");
    }else{
%>
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
 <%   ArrayList<String> CredCart1 = CredCart(session.getAttribute("userid").toString());%>
 


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
            <li><a href="home.jsp">Профиль</a></li>
            <li class="active"><a href="paymentinfo.jsp">Платежные данные</a></li>
            <li><a href="#contact">Платежи</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

    <div class="container">

      <div class="starter-template">
       <table class="table" border="1">
   <caption>Платежные Карты</caption>
   <% int i = 0;
while (i < CredCart1.size()) { %>
     <tr><td><% out.println(CredCart1.get(i)); %></td></tr>
 <%   
    i++;
} %>
  </table>
  <a href='addcredit.jsp'>Добавить карту</a>
      </div>
    <%}%>

    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
  </body>
</html>