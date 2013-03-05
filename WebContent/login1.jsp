<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import ="javax.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login</title>
</head>

<body>
</body>
</html>

<% 
String userid=request.getParameter("usr"); 
session.putValue("userid",userid); 
String password=request.getParameter("pwd"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wbs",
"root",""); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select userid, password from user");
if(rs.next()) 
{ 
	if(rs.getString(2).equals(password)) 
{
    %>
    <jsp:forward page="welcome.jsp"></jsp:forward>
<%}
else 
{ 
out.println("Invalid password try again"); 
} 
}
%>
 