<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>

<HTML>
<HEAD>
<TITLE>Book Store</TITLE>
<script language="Javascript">

function checkEmail(email) {
	if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email)){
	return (true)
	}
	alert("Invalid E-mail Address! Please re-enter.")
	return (false);
}

function validFields(){
          
if (document.form2.userid.value == "" || document.form2.userid.value == null){
alert ( "Please enter User ID for your account / Field cannot be left blank" );
return false;
}

if (document.form2.pass.value == "" || document.form2.pass.value == null){
alert ( "Please enter a password for your account/ Field cannot be left blank" );
return false;
}

if (document.form2.fname.value == "" || document.form2.fname.value == null){
	alert ( "Please enter your First Name / Field cannot be left blank" );
	return false;
	}

if (document.form2.lname.value == "" || document.form2.lname.value == null){
	alert ( "Please enter your Last Name / Field cannot be left blank" );
	return false;
	}

if (document.form2.email.value == "" || document.form2.email.value == null){
	alert ( "Please enter your valid email address / Field cannot be left blank" );
	return false;
	}
/*
if (document.form2.age.value == "" || document.form2.age.value == null){
	alert ( "Please enter Name / Field cannot be left blank" );
	return false;
	}
	*/

if (document.form2.add.value == ""|| document.form2.add.value == null){
alert ( "Please enter your current address / Field cannot be left blank" );
return false;
}
if (document.form2.tel.value == ""|| document.form2.tel.value == null){
alert ( "Please enter your Phone number / Field cannot be left blank" );
return false;
}
return true;
}
</script>
</HEAD>

<BODY bgcolor="#ffffcc">

<H1>Create an account on the Book Store</H1>


<P>New Customer data is entered to  the login table 
 </P>

<FORM action="response.jsp" method="get" name="form2">

<TABLE style="background-color: #ECE5B6;" WIDTH="30%">

	<TR>
		<TH width="50%">
		<center>User ID</center>
		</TH>
		<TD width="50%"><INPUT TYPE="text" NAME="userid"></TD>
	</TR>
	
		<TR>
		<TH width="50%">
		<center>Password</center>
		</TH>
		<TD width="50%"><INPUT TYPE="password" NAME="pass"></TD>
	</TR>

	<TR>
		<TH width="50%">
		<center>First Name</center>
		</TH>
		<TD width="50%"><INPUT TYPE="text" NAME="fname"></TD>
	</TR>
	
		<TR>
		<TH width="50%">
		<center>Last Name</center>
		</TH>
		<TD width="50%"><INPUT TYPE="text" NAME="lname"></TD>
	</TR>
	
			<TR>
		<TH width="50%">
		<center>Email</center>
		</TH>
		<TD width="50%"><INPUT TYPE="text" NAME="email" onChange="checkEmail(email)"></TD>
	</TR>
	
		<!--  <TR>
		<TH width="50%">
		<center>Age</center>
		</TH>
		<TD width="50%"><INPUT TYPE="text" NAME="age"></TD>
	</TR>-->
	
	<TR>
		<TH width="50%">
		<center>Address</center>
		</TH>
		<TD width="50%"><INPUT TYPE="text" NAME="add"></TD>
	</TR>

	<TR>
		<TH width="50%">
		<center>Phone</center>
		</TH>
		<TD width="50%"><INPUT TYPE="text" NAME="tel"></TD>
	</TR>
	
	<TR>
		<TH width="50%">
		<center>City</center>
		</TH>
		<TD width="50%"><INPUT TYPE="text" NAME="city"></TD>
	</TR>
	
	<TR>
		<TH width="50%">
		<center>State</center>
		</TH>
		<TD width="50%"><INPUT TYPE="text" NAME="stat"></TD>
	</TR>

<TR>
		<TH width="50%">
		<center>Country</center>
		</TH>
		<TD width="50%"><INPUT TYPE="text" NAME="cont"></TD>
	</TR>

<TR>
		<TH width="50%">
		<center>Zip</center>
		</TH>
		<TD width="50%"><INPUT TYPE="text" NAME="zip"></TD>
	</TR>

	<TR>
		<TH></TH>
		<TD width="50%"><INPUT TYPE="submit" VALUE="Register"
			OnClick="validFields();"></TD>
	</TR>

</TABLE>
</FORM>

</BODY>