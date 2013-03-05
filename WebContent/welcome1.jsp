<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Web Book Store-Welcome</title>
<link rel="stylesheet" type="text/css" href="style.css" />

</head>
<body>
<div id="wrap">

       <div class="header">
       		<div class="logo"><a href="index.jsp"><a href="index.jsp"><img src="images/WBS Logo.gif" width="128" height="40" alt="" title="" border="0"/></a></div> 
            
            <div class="search">
              <form id="form1" name="form1" method="post" action="Trial.jsp">
                <table width="250" height="25" border="0">
                  <tr>
                    <td>search</td>
                    <td><label for="searchtextbox"></label>
                    <input name="searchtextbox" type="text" id="searchtextbox" maxlength="50" bgcolor/></td>
                    <td><img name="" src="" width="23" height="23" alt="" /></td>
                  </tr>
                </table>
              </form>
            </div>
            
                       
        <div id="menu">
            <ul>                                                                       
            <li class="selected"><a href="index.jsp">home</a></li>
            <li><a href="about.jsp">about us</a></li>
            <li><a href="category.jsp">books</a></li>
            <li><a href="specials.jsp">specials books</a></li>
            <li><a href="myaccount.jsp">my accout</a></li>
            <li><a href="register.jsp">register</a></li>
            <li><a href="Trial.jsp">prices</a></li>
            <li><a href="contact.jsp">contact</a></li>
            <li><a> </a></li>
            <li><a href="welcome.jsp"><%
String user=session.getValue("userid").toString();
%>welcome <%=user.toUpperCase()%></a></li>
            <li><a href="index.jsp">logout</a></li>
            
            </ul>
        </div>     
            
            
       </div> 
       
       
       <div class="center_content">
       	<div class="left_content">
        	
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Featured books</div>
        
        	<div class="feat_prod_box">
            
            	<div class="prod_img"><img src="images/head-first-java-100x100-imadarvqgbqhupbc.jpg" alt="" width="98" height="150" /></div>
                
                <div class="prod_det_box">
                	<div class="box_top"></div>
                    <div class="box_center">
                    <div class="prod_title">Head First Java</div>
                    <p class="details">This is a book that is tailored for Java novices. Ideal for those who are interested in learning Java but have been put off by the complexities of learning the language, Head First Java explores a new way of teaching the same.                    </p>
                    <a href="Trial.jsp" class="more">- more details -</a>
                    <div class="clear"></div>
                    </div>
                    
                    <div class="box_bottom"></div>
                </div>    
            <div class="clear"></div>
            </div>	
            
            
        	<div class="feat_prod_box">
            
            	<div class="prod_img"><img src="images/ccna.jpg" width="98" height="150" /></div>
                
                <div class="prod_det_box">
                	<div class="box_top"></div>
                    <div class="box_center">
                    <div class="prod_title">CCNA</div>
                    <p class="details">Written by Cisco networking authority Todd Lammle, this comprehensive guide has been completely updated to reflect the latest CCNA 640-802 exam. Todd's straightforward style provides lively examples, hands on and written labs, easy-to-understand...</p>
                    <a href="Trial.jsp" class="more">- more details -</a>
                    <div class="clear"></div>
                    </div>
                    
                    <div class="box_bottom"></div>
                </div>    
            <div class="clear"></div>
            </div>      
            
            
            
           <div class="title"><span class="title_icon"><img src="images/bullet2.gif" alt="" title="" /></span>New books</div> 
           
           <div class="new_products">
           
                    <div class="new_prod_box">
                        <a href="Trial.jsp">product name</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span><img src="images/Android 4.jpg" alt="" width="77" height="93" class="thumb" /></div>           
                    </div>
                    
                    <div class="new_prod_box">
                        <a href="Trial.jsp">product name</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span><img src="images/core-python.jpg" width="72" height="100" class="thumb" /></div>           
                    </div>                    
                    
                    <div class="new_prod_box">
                        <a href="Trial.jsp">product name</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span><img src="images/Database Systems.jpg" width="75" height="100" class="thumb" /></div>           
                    </div>          
            
            </div> 
          
            
        <div class="clear"></div>
        </div><!--end of left content-->
        
        <div class="right_content">
          <div class="cart">
      <div class="title"><span class="title_icon"><img src="images/cart.gif" alt="" title="" /></span>My cart</div>
                  <div class="home_cart_content">
                  3 x items | <span class="red">TOTAL: 100$</span>
                  </div>
                  <a href="cart.jsp" class="view_cart">view cart</a>
              
              </div>
                       
            	
        
        
             <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>About Our Store</div> 
             <div class="about">
             <p>
             <img src="images/about.gif" alt="" title="" class="right" />WBS  is an online web application where the customer can purchase books online.  Through a web browser the you can search for a book by its title or  author, later can add to the shopping cart and finally purchase through  different modes of payment. You can login using your credentials  or sign up...</p>
             
          </div>
             
             <div class="right_box">
             
             	<div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>Promotions</div> 
                    <div class="new_prod_box">
                        <a href="Trial.jsp">product name</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span><img src="images/Design Patterns.jpg" width="78" height="100" class="thumb" /></div>           
                    </div>
                    
                    <div class="new_prod_box">
                        <a href="Trial.jsp">product name</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span><img src="images/Java.jpg" width="81" height="100" class="thumb" /></div>           
                    </div>                    
                    
                    <div class="new_prod_box">
                        <a href="Trial.jsp">product name</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span><img src="images/oracle-dba.jpg" width="75" height="100" class="thumb" /></div>           
                    </div>              
             
             </div>
             
             <div class="right_box">
             
             	<div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>Categories</div> 
                
                <ul class="list">
                  <li><a href="#">accademic</a></li>
                  <li><a href="#">biographies</a></li>
                  <li><a href="#">computers</a></li>
                  <li><a href="#">comics</a></li>
                  <li><a href="#">fiction</a></li>
                  <li><a href="#">religion</a></li>
                  <li><a href="#">crafts</a></li>
                  <li><a href="#">music</a></li>
                  <li><a href="#">travel</a></li>
                  <li><a href="#">health</a></li>
                  <li><a href="#">nature</a></li>
                  <li></li>                                              
                </ul>
                
           	   <div class="title"><span class="title_icon"><img src="images/bullet6.gif" alt="" title="" /></span>Partners</div> 
                
                <ul class="list">
                <li><a href="#">accesories</a></li>
                <li><a href="#">books gifts</a></li>
                <li><a href="#">specials</a></li>
                <li><a href="#">hollidays gifts</a></li>
                <li><a href="#">accesories</a></li>
                <li><a href="#">books gifts</a></li>
                <li><a href="#">specials</a></li>
                <li><a href="#">hollidays gifts</a></li>
                <li><a href="#">accesories</a></li>                              
                </ul>      
             
             </div>         
             
        
        </div><!--end of right content-->
        
        
       
       
       <div class="clear"></div>
       </div><!--end of center content-->
       
              
       <div class="footer">
       	<div class="left_footer"><img src="images/WBS Logo bottom.gif" width="143" height="34" /><br />
       	</div>
        <div class="right_footer">
        <a href="#">home</a>
        <a href="#">about us</a>
        <a href="#">services</a>
        <a href="#">privacy policy</a>
        <a href="#">contact us</a>
       
        </div>
        
       
       </div>
    

</div>

</body>
</html>