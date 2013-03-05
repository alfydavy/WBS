

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Store</title>
</head>
<body>


<%
String userid=request.getParameter("userid");
session.putValue("userid",userid);
String password=request.getParameter("password");
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String email=request.getParameter("email");
String address=request.getParameter("address");
String phone=request.getParameter("phone");
String city=request.getParameter("city");
String state=request.getParameter("state");
String country=request.getParameter("country");
String zipcode=request.getParameter("zipcode");


//out.println("userid");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wbs",
"root","");
Statement st= con.createStatement();
ResultSet rs;


int i=st.executeUpdate("insert into user values ('"+userid+"','"+password+"','"+firstname+"','"+lastname+"','"+email+"','"+address+"','"+phone+"','"+city+"','"+state+"','"+country+"','"+zipcode+"')");
st.close();
con.close();
%>
<jsp:forward page="welcome.jsp"></jsp:forward>

</body>
</html>