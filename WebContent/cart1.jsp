<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="beans.cart.ShoppingCart" %>
<%@ page errorPage="errorpage.jsp" %>
<%@ page import="java.util.Enumeration"%>

<!-- Instantiate the ShoppingCart bean with an id of "cart" -->
<jsp:useBean id="cart" scope="session" class="beans.cart.ShoppingCart" />
<jsp:setProperty name="cart" property="*" />



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
}
</style>
<link rel="stylesheet" type="text/css" href="style.css" />
	<link rel="stylesheet" href="lightbox.css" type="text/css" media="screen" />
	
	<script src="js/prototype.js" type="text/javascript"></script>
	<script src="js/scriptaculous.js?load=effects" type="text/javascript"></script>
	<script src="js/lightbox.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/java.js"></script>
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

<table width="800" border="1" align="left" cellpadding="0" cellspacing="0" id="1" valign="top">
  <tr valign="top">
    <td height="1000"><table width="795" height="1002" border="1" id="2">
      <tr valign="top">
        <td height="75"><div class="header">
       		<div class="logo"><a href="index.jsp"><img src="images/WBS Logo.gif" width="128" height="40" alt="" title="" border="0"/></a></div>            
        <div id="menu">
            <ul>                                                                       
            <li class="selected"><a href="index.jsp">home</a></li>
            <li><a href="about.jsp">about us</a></li>
            <li><a href="category.jsp">books</a></li>
            <li><a href="specials.jsp">specials books</a></li>
            <li><a href="myaccount.jsp">my accout</a></li>
            <li><a href="register.jsp">register</a></li>
            <li><a href="details.jsp">prices</a></li>
            <li><a href="contact.jsp">contact</a></li>
            </ul>
        </div>     
            
            
       </div></td>
      </tr>
      
      <tr valign="top">
        <td height="769"><table width="910" height="792" border="1" id="3">
          <tr valign="top">
            <td width="421" height="786" bgcolor="#FFFFFF">
              <table width="415" height="872" border="1" id="4">
              <tr valign="top">
                <td height="83"><div class="crumb_nav">
                  <a href="index.jsp">home</a> &gt;&gt; product name
                  </div></td>
              </tr>
              <tr valign="top">
                <td height="781"><form action="" method="post">
                  <table width="410" height="778" border="1" id="5">
                    <tr valign="top">
                      <td height="60"><div class="title"></div></td>
                    </tr>
                    <tr valign="top">
                      <td><div class="feat_prod_box_details"></td>
                    </tr>
                  </table>
              </form> 
                
                <%
 }		    
 st.close();
 con.close();
			}
			catch(Exception e)
			      {
			  }
			 %>
                
                </td>
                </tr>
            </table></td>
            <td width="473">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table>
    <p>&nbsp;</p></td>
  </tr>
</table>
</body>
</html>
