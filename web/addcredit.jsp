<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import = "java.util.ArrayList" %>      
<%@ page import  = " static dao.dao.user_id" %>
<%@page import = " static dao.dao.UserData" %>
<!DOCTYPE html>

<html>
    <head>
         <jsp:include page="header.jsp"  />
       
 <style type="text/css">

 </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LetCred</title>
    </head>
    
﻿<%
 if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
            response.sendRedirect("index.jsp");
    }
%>
      <body>
    <style>
        .demo-container {
            width: 100%;
            max-width: 350px;
            margin: 50px auto;
        }
        form {
            margin: 30px;
        }
        input {
            width: 200px;
            margin: 10px auto;
            display: block;
        }
    </style>
 <div class="container">
     <form class="form-horizontal" role="form" method="post" action="addcreditcontroller.jsp">
    <fieldset>
      <legend>Добавление карты</legend>
      <div class="form-group">
        <label class="col-sm-3 control-label" for="cardholdername">Владелец карты</label>
        <div class="col-sm-9">
          <input type="text" class="form-control" name="cardholdername" id="cardholdername" placeholder="Card Holder's Name">
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-3 control-label" for="cardnumber">Номер карты</label>
        <div class="col-sm-9">
          <input type="text" class="form-control" name="cardnumber" id="cardnumber" placeholder="Debit/Credit Card Number">
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-3 control-label" for="expirymonth">Срок карты</label>
        <div class="col-sm-9">
          <div class="row">
            <div class="col-xs-3">
              <select class="form-control col-sm-2" name="expirymonth" id="expirymonth">
                <option>Месяц</option>
                <option value="01">Jan (01)</option>
                <option value="02">Feb (02)</option>
                <option value="03">Mar (03)</option>
                <option value="04">Apr (04)</option>
                <option value="05">May (05)</option>
                <option value="06">June (06)</option>
                <option value="07">July (07)</option>
                <option value="08">Aug (08)</option>
                <option value="09">Sep (09)</option>
                <option value="10">Oct (10)</option>
                <option value="11">Nov (11)</option>
                <option value="12">Dec (12)</option>
              </select>
            </div>
            <div class="col-xs-3">
              <select class="form-control" name="expiryyear">
                <option value="13">2013</option>
                <option value="14">2014</option>
                <option value="15">2015</option>
                <option value="16">2016</option>
                <option value="17">2017</option>
                <option value="18">2018</option>
                <option value="19">2019</option>
                <option value="20">2020</option>
                <option value="21">2021</option>
                <option value="22">2022</option>
                <option value="23">2023</option>
              </select>
            </div>
          </div>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-3 control-label" for="cvv">CVV</label>
        <div class="col-sm-3">
          <input type="text" class="form-control" name="cvv" id="cvv" placeholder="Security Code">
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-offset-3 col-sm-9">
          <button type="submit" class="btn btn-success">Добавить карту</button>
        </div>
      </div>
    </fieldset>
  </form>
</div>