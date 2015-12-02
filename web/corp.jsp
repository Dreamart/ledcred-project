<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
      <div class="container">

      <div class="starter-template">
       <table class="table" border="1">
   <caption>Ланные</caption>
  
   <tr><td>Наименование:</td><td><%=CorpData1.get(4)%></td></tr>
   <tr><td>Код ЄДРПОУ: </td><td><%=UCorpData1.get(0)%></td></tr>
   <tr><td>Юридический адрес:</td><td><%=CorpData1.get(1)%></td></tr>
   <tr><td>Почтовый адрес:</td><td><%=CorpData1.get(2)%></td></tr>
   <tr><td>Банковские реквизиты:</td><td><%=CorpData1.get(5)%></td></tr>
   <tr><td>Страна:</td><td><%=CorpData1.get(6)%></td></tr>
   <tr><td>Адрес:</td><td><%=CorpData1.get(2)%></td></tr>
   <tr><td>Контактный телефон:</td><td><%=CorpData1.get(3)%></td></tr>
   <tr><td>Email:</td><td><%=CorpData1.get(3)%></td></tr>
	
	
  </table>
      </div>
  

    </div>
    </body>
</html>
