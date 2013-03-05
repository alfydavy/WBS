<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Store</title>
<style>
* { font-size: 12px; font-family: Verdana }
input { border: 1px solid #ccc }
</style>
</head>
<body>

<jsp:declaration>
java.util.Enumeration parms;
</jsp:declaration>

<jsp:scriptlet>
parms = request.getParameterNames();

while(parms.hasMoreElements()) {
    String name = (String) parms.nextElement();
    session.removeAttribute(name);
}

</jsp:scriptlet>


<img src="images/add.png" onclick="document.location='index.jsp'">
<img src="images/remove.png" onclick="document.location='remove.jsp'">
<img src="images/cart.png" onclick="document.location='cart.jsp'">

<h2>Remove items from cart</h2>

<form method="get" action="remove.jsp">

<table>
<% if (session.getAttribute("scissors") != null) { %>
<tr>
<td><input type="checkbox" name="scissors"></td><td>Scissors</td></td>
</tr>
<% } %>
<% if (session.getAttribute("book") != null) { %>
<tr>
<td><input type="checkbox" name="book"></td><td>Book</td></td>
</tr>
<% } %>
<% if (session.getAttribute("pen") != null) { %>
<tr>
<td><input type="checkbox" name="pen"></td><td>Pen</td></td>
</tr>
<% } %>
<% if (session.getAttribute("bottle") != null) { %>
<tr>
<td><input type="checkbox" name="bottle"></td><td>Bottle</td></td>
</tr>
<% } %>
<% if (session.getAttribute("glass") != null) { %>
<tr>
<td><input type="checkbox" name="glass"></td><td>Glass</td></td>
</tr>
<% } %>
</table>
<br><br>
<input type="submit" value="submit">
</form>

</body>
</html>