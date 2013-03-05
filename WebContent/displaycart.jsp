<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page errorPage="errorpage.jsp" %>
<%@ page import="java.util.Enumeration"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="beans.cart.ShoppingCart" %>

<!-- Instantiate the ShoppingCart bean with an id of "cart" -->
<jsp:useBean id="cart" scope="session" class="beans.cart.ShoppingCart" />
<jsp:setProperty name="cart" property="*" />

<html>

<head>

<title>Shopping Cart Contents</title>

</head>

<body>

  <!-- Code by alfydavy-->
  <!-- If there is a  item to remove it from the cart -->
<!--  
  <%
						String id = request.getParameter("bid");
						if ( id != null ) {
							Integer quantity = new Integer(request.getParameter("quantity"));
						/*	updateQuantity(id,  quantity); */
						
						
						}
						%>
						-->

<center>

<table width="300" border="1" cellspacing="0"

cellpadding="2" border="0">

<caption><b>Shopping Cart Contents</b></caption>

<tr>

<th>Book Name</th>

<th>Book Price</th>

<th>Book Quantity</th>

</tr>

<%

Enumeration e = cart.getEnumeration();

String[] tmpItem;

// Iterate over the cart

while (e.hasMoreElements()) {

tmpItem = (String[])e.nextElement();

%>

<tr>
<form>
<td><%=tmpItem[1] %></td>
<td align="center">$</td>
<td align="center"><%=tmpItem[3] %></td>
<td align="center"><img src="<%=tmpItem[4] %>" ></td>
<td align="center"><input type="submit"  name="remove" value ="Remove from Cart"  ></td>
<input type="hidden" name="bid" value="<%=tmpItem[0] %>">
<input type="hidden" name="quantity" value="<%=tmpItem[3] %>">
</form>
</tr>
<%

}

%>

</table>

</center>

<a href="addtocart.jsp">Back to Catalog</a>

</body>

</html> 