<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Store</title>
</head>
<body>
  <!-- Code by alfydavy-->
  <!-- If there is a new item on the request add it to the cart -->
  <%
						String id = request.getParameter("bid");
						if ( id != null ) {
						String name = request.getParameter("bname");
						Float price = new Float(request.getParameter("bprice"));
						Integer quantity = new Integer(request.getParameter("quantity"));
						String img = request.getParameter("bimg");
						cart.addItem(id, name, price.floatValue(), quantity.intValue(), img);
						
						}
						%>
  <!-- Print the current quantity of the ShoppingCart -->
  <a href="displaycart.jsp">Shopping Cart Quantity:</a>
    <%=cart.getNumOfItems() %>


<%
String user=session.getValue("userid").toString();


String cat=request.getParameter("cat");
String lang=request.getParameter("lang");
String auth=request.getParameter("auth");

/*
out.println("auth is " + auth);
out.println("lang is " + lang);
out.println("cat is " + cat);

*/

/*
String email=request.getParameter("email");
String age=request.getParameter("age");
String add=request.getParameter("add");
String tel=request.getParameter("tel");
*/


//out.println("userid");
try{
	
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wbs",
"root","");
Statement st= con.createStatement();
ResultSet rs=null;

 //if(cat !="Category" && lang != "Language" && auth!="Author") {
	
 rs=st.executeQuery("SELECT * FROM books where cat_id='"+cat+"' AND auth_id='"+auth+"' AND lang_id='"+lang+"'  limit  10 ");
 //out.println(rs);
		 
 while(rs.next()){
     %>
     
     <table border="1" bordercolor ="grey" cellpadding="1">
     <tr>
     <td> <input type ="text" name ="search"  id="search"></td>
     
     </tr>
     <tr>
     	 <form action="addtocart.jsp" method="post">
 		<td> Book id</td>
         <td><%= rs.getInt("book_id")%></td>  
         <td> Book Name</td>  
         <td><%= rs.getString("book_name")%></td>
         <td>Price</td>
         <td><%= rs.getString("book_price")%> </td>
         <td>Picture</td>
         <td><img  src="<%= rs.getString("book_img")%>"></td>
         <td><input type="checkbox" name="<%= rs.getString("book_name")%>"></td>
         <td> <input type="text" id="quantity" name="quantity"></td>
          <td><input type="submit" name="add" value="Add to cart"></td>
          <input type="hidden" name="bid" value="<%= rs.getString("book_id")%>">
         <input type="hidden" name="bname" value="<%= rs.getString("book_name")%>">
        <input type="hidden" name="bprice" value="<%= rs.getString("book_price")%>">
        <input type="hidden" name="bimg" value="<%= rs.getString("book_img")%>">
        </form>
     </tr>   
     
     
     <!--  <tr>
      <form action="AddToShoppingCart.jsp" method="post">
        <td>Happy Gilmore</td>
        <td>$19.95</td>
        <td><input type="submit" name="Submit" value="Add"></td>
        <input type="hidden" name="id" value="1">
        <input type="hidden" name="desc" value="Happy Gilmore">
        <input type="hidden" name="price" value="19.95">
      </form>
    </tr> -->
     
     </table>
     
			<%
			     } 
 st.close();
 con.close();
			}
			catch(Exception e)
			      {
			  }
			 %>


  
</body>
</html>