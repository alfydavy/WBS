<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page errorPage="errorpage.jsp" %>

<!-- Instantiate the ShoppingCart bean with an id of "cart" -->
<jsp:useBean id="cart" scope="session" class="beans.cart.ShoppingCart" />
<jsp:setProperty name="cart" property="*" />

<html>
  <head>
    <title>DVD Catalog</title>
  </head>
  <body>
  <!-- If there is a new item on the request add it to the cart -->
  <%
						String id = request.getParameter("id");
						if ( id != null ) {
						String desc = request.getParameter("desc");
						Float price = new Float(request.getParameter("price"));
						cart.addItem(id, desc, price.floatValue(), 1);
						}
						%>
  <!-- Print the current quantity of the ShoppingCart -->
  <a href="/purejsp/ShoppingCart.jsp">Shopping Cart Quantity:</a>
    <%=cart.getNumOfItems() %>
  <hr>
  <center><h3>DVD Catalog</h3></center>
  <table border="1" width="300" cellspacing="0"
  cellpadding="2" align="center">
    <tr><th>Description</th><th>Price</th></tr>
<!-- ("123", "First thing added", 123.45f, 4); -->
    <tr>
      <form action="/purejsp/AddToShoppingCart.jsp" method="post">
        <td>Happy Gilmore</td>
        <td>$19.95</td>
        <td><input type="submit" name="Submit" value="Add"></td>
        <input type="hidden" name="id" value="1">
        <input type="hidden" name="desc" value="Happy Gilmore">
        <input type="hidden" name="price" value="19.95">
      </form>
    </tr>
    <tr>
      <form action="/purejsp/AddToShoppingCart.jsp" method="post">
        <td>Wayne's World</td>
        <td>$19.95</td>
        <td><input type="submit" name="Submit" value="Add"></td>
        <input type="hidden" name="id" value="2">
        <input type="hidden" name="desc" value="Wayne's World">
        <input type="hidden" name="price" value="19.95">
      </form>
    </tr>
    <tr>
      <form action="/purejsp/AddToShoppingCart.jsp" method="post">
        <td>Tommy Boy</td>
        <td>$15.95</td>
        <td><input type="submit" name="Submit" value="Add"></td>
        <input type="hidden" name="id" value="3">
        <input type="hidden" name="desc" value="Tommy Boy">
        <input type="hidden" name="price" value="15.95">
      </form>
    </tr>
    <tr>
      <form action="/purejsp/AddToShoppingCart.jsp" method="post">
        <td>Lethal Weapon 4</td>
        <td>$19.95</td>
        <td><input type="submit" name="Submit" value="Add"></td>
        <input type="hidden" name="id" value="4">
        <input type="hidden" name="desc" value="Lethal Weapon 4">
        <input type="hidden" name="price" value="19.95">
      </form>
    </tr>
    <tr>
      <form action="/purejsp/AddToShoppingCart.jsp" method="post">
        <td>Nutty Professor</td>
        <td>$19.95</td>
        <td><input type="submit" name="Submit" value="Add"></td>
        <input type="hidden" name="id" value="5">
        <input type="hidden" name="desc" value="Nutty Professor">
        <input type="hidden" name="price" value="19.95">
      </form>
    </tr>
    </table>
  </body>
</html>