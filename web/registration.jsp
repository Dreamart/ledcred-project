<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("uname");    
    String password = request.getParameter("pass");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
	String country = request.getParameter("country");
	String city = request.getParameter("city");
	String adress = request.getParameter("adress");
	String index1 = request.getParameter("index1");
	String phone = request.getParameter("phone");

	String day = request.getParameter("day");
	String month = request.getParameter("month");
	String year = request.getParameter("year");
    Class.forName("com.mysql.jdbc.Driver");
       Connection  dbConnection = DriverManager.getConnection("jdbc:mysql://persia00.mysql.ukraine.com.ua:3306/persia00_letcred","persia00_letcred", "4uqd9hp3");
    Statement st =  dbConnection.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into buyer(name, surname, country, phone, email, city, pass, adress, day, month, year, index1, regdata) values ('" + fname + "','" + lname + "','"+ country +"','"+ phone + "','"+ email + "','" + city + "','"+ pass +"','" + adress + "','"+ day +"','"+ month +"','"+ year +"','"+index1+"', CURDATE())");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>