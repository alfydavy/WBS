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
<form name="form1" action="" method="post">
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
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/WBS",
"test1","test1");
Statement st= con.createStatement();
ResultSet rs=null;

 //if(cat !="Category" && lang != "Language" && auth!="Author") {
	
 rs=st.executeQuery("SELECT * FROM books where cat_id='"+cat+"' AND auth_id='"+auth+"' AND lang_id='"+lang+"'  limit  10 ");
 //out.println(rs);

/*
 return;
}

// cat != null
else if (cat !="Category" && lang =="Language" && auth=="Author") {
	 rs=st.executeQuery("SELECT * FROM books where books.cat_id='"+cat+"'  limit  10 ");
	 return;
}
// lang !=null
else if (cat =="Category" && lang != "Language" && auth=="Author") {
	 rs=st.executeQuery("SELECT * FROM books where books.lang_id='"+lang+"' limit  10 ");
	 return;
}
 // auth!=null

else if (cat =="Category"  && lang == "Language"  && auth!="Author") {
	 rs=st.executeQuery("SELECT * FROM books where books.auth_id='"+auth+"' limit  10 ");
	 return;
}
else if(cat !="Category"  && lang != "Language" && auth=="Author") {
	
 rs=st.executeQuery("SELECT * FROM books where books.cat_id='"+cat+"' AND books.lang_id='"+lang+"'  limit  10 ");
 return;
}

else if(cat !="Category"  && lang =="Language" && auth!="Author") {
	
 rs=st.executeQuery("SELECT * FROM books where books.cat_id='"+cat+"' AND books.auth_id='"+auth+"'  limit  10 ");
 return;
}

else if(cat =="Category"  && lang != "Language"  && auth!="Author") {
	
 rs=st.executeQuery("SELECT * FROM books where books.auth_id='"+auth+"' AND books.lang_id='"+lang+"'  limit  10 ");
 return;
}
	
else {
	 out.println("You have not made any choice , Kindly make a choice ");
	  
}
 */	 
		 
 while(rs.next()){
     %>
     
     <table border="1" bordercolor ="grey" cellpadding="1">
     <tr>
     <td> <input type ="text" name ="search"  id="search"></td>
     
     </tr>
     <tr>
 		<td> Book id</td>
         <td><%= rs.getInt("book_id")%></td>  
         <td> Book Name</td>  
         <td><%= rs.getString("book_name")%></td>
         <td>Price</td>
         <td><%= rs.getString("book_price")%> </td>
         <td>Picture</td>
         <td><img  src="<%= rs.getString("book_img")%>"></td>
         <td><input type="checkbox" name="<%= rs.getString("book_name")%>"></td>
         <td> <input type="text" id="quantity" name="quant"></td>
          <td><input type="button" name="add" value="Add to cart"></td>
        
     </tr>   
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


     </form>
</body>
</html>