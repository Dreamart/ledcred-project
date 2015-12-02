<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

﻿<%
    if ((session.getAttribute("userid") != null) && (session.getAttribute("userid") != "")) {
     response.sendRedirect("home.jsp");
    }
%>
<html>
    <head>
        <link rel="stylesheet" href="css/bootstrap.css" />
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/bootstrapValidator.css" />
        <link rel="stylesheet" href="css/bootstrapValidator.min.css" />
        <jsp:include page="header.jsp"  />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Регистрация</title>
    </head>
    <body>
	<div class="reg_box">
	<form id="registerForm" role="form" class="form-vertical" method="post" action="registration.jsp">
			<div class="form-group">
               <label class="col-sm-2 control-label" for="fname">Имя</label>
               <div class="col-sm-10">
              <input class="form-control" id= "fname" type="text" placeholder="" name="fname" value="" />
               </div>
                </div> 
                <div class="form-group">
               <label class="col-sm-2 control-label" for="lname">Фамилия</label>
               <div class="col-sm-10">
              <input class="form-control" id= "lname" type="text" placeholder="" name="lname" value="" />
               </div>
                </div> 
				<div class="form-group">
               <label class="col-sm-2 control-label" for="email">Email</label>
               <div class="col-sm-10">
              <input class="form-control" id= "email" type="text" placeholder="" name="email" value="" />
               </div>
                </div> 
				<div class="form-group">
               <label class="col-sm-2 control-label" for="country">Страна</label>
               <div class="col-sm-10">
              <input class="form-control" id= "country" type="text" placeholder="" name="country" value="" />
               </div>
                </div> 
				<div class="form-group">
               <label class="col-sm-2 control-label" for="city">Город</label>
               <div class="col-sm-10">
              <input class="form-control" id= "city" type="text" placeholder="" name="city" value="" />
               </div>
                </div> 
				<div class="form-group">
               <label class="col-sm-2 control-label" for="adress">Адрес</label>
               <div class="col-sm-10">
              <input class="form-control" id= "adress" type="text" placeholder="" name="adress" value="" />
               </div>
                </div> 
				<div class="form-group">
               <label class="col-sm-2 control-label" for="adress">Индекс</label>
               <div class="col-sm-10">
              <input class="form-control" id= "index" type="text" placeholder="Введите 5 значный индекс" name="adress" value="" />
               </div>
                </div> 
				<div class="form-group">
               <label class="col-sm-2 control-label" for="adress">Телефон</label>
               <div class="col-sm-10">
              <input class="form-control" id= "adress" type="text" placeholder="" name="adress" value="" />
               </div>
                </div>
				<div class="form-group">
               <label class="col-sm-1 control-label" for="pass">Пароль</label>
               <div class="col-sm-12">
              <input class="form-control" id= "pass" type="password" placeholder="" name="pass" value="" />
               </div>
                </div> 
				
				<div class="form-group">
               <label class="day-birthday">Укажите дату рождения</label>
			   </div>
					 <div class="col-xs-3">
              <select class="form-control" name="expiry-d" id="day">
                <option value="13">1</option>
                <option value="14">2</option>
                <option value="15">3</option>
                <option value="16">4</option>
                <option value="17">5</option>
                <option value="18">6</option>
                <option value="19">7</option>
                <option value="20">8</option>
                <option value="21">9</option>
                <option value="22">10</option>
                <option value="23">11</option>
				<option value="24">12</option>
				<option value="25">13</option>
				<option value="26">14</option>
				<option value="27">15</option>
				<option value="28">16</option>
				<option value="29">17</option>
				<option value="30">18</option>
				<option value="31">19</option>
				<option value="32">20</option>
				<option value="33">21</option>
				<option value="34">22</option>
				<option value="35">23</option>
				<option value="36">24</option>
				<option value="37">25</option>
				<option value="38">26</option>
				<option value="39">27</option>
				<option value="40">28</option>
				<option value="41">39</option>
				<option value="42">30</option>
				<option value="43">31</option>
				
              </select>
            </div>
				<div class="col-xs-3">
              <select class="form-control col-sm-2" name="month" id="month">
                <option>Месяц</option>
                <option value="01">Янв. (01)</option>
                <option value="02">Февр. (02)</option>
                <option value="03">Март(03)</option>
                <option value="04">Апр. (04)</option>
                <option value="05">Май (05)</option>
                <option value="06">Июнь (06)</option>
                <option value="07">Июль (07)</option>
                <option value="08">Авг. (08)</option>
                <option value="09">Сент. (09)</option>
                <option value="10">Окт. (10)</option>
                <option value="11">Нояб. (11)</option>
                <option value="12">Дек. (12)</option>
              </select>
            </div>
            <div class="col-xs-3">
              <select class="form-control" name="year">
                <option value="13">1989</option>
                <option value="14">1990</option>
                <option value="15">1991</option>
                <option value="16">1992</option>
                <option value="17">1994</option>
                <option value="18">1995</option>
                <option value="19">1996</option>
                <option value="20">1997</option>
                <option value="21">1998</option>
                <option value="22">1999</option>
                <option value="23">2000</option>
              </select>
            </div>
		<div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
                       <button type="submit" name="submit" class="btn btn-primary"> Регистрация </button>
						<a class="btn btn-default" href="index.jsp">Уже зарегистрированы?</a>
                       
                
                         </DIV>
				        </div>
				</form>
            
				</div>
		<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrapValidator.js"></script>
    <script type="text/javascript" src="js/validator.js"></script>
				
				
				
				
				
				
				
