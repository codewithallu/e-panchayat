<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.Random"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Birth certificate</title>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="header">
  <h1>Welcome to Gandhi Nagar Panchayat</h1>
</div>
<div id="topnav">
  <ul id="topnavlist">
    
    <li><a href="applications.jsp">Applications</a></li>
    
    <li><a href="complaints.jsp">complaints/suggestions</a></li>
    <li><a href="usernotification.jsp">Notifications</a></li>
    <li><a href="logout.jsp">Logout</a></li>
  </ul>
</div>
<div id="gutter"></div>
<div id="col1">
   <%
  java.util.Date d=new java.util.Date();
                               String ss="1234567890";
                               String id="";
                               Random r=new Random();
                               for(int i=0;i<7;i++)
                               {
                                    id=id+ss.charAt(r.nextInt(ss.length()));
                               }
                        %>
  
</div>
<div id="col2">
<h1><font color="000000">Application for Birth Certificate</font></h1>
</br>
<form action="bcdb.jsp" method="post">
<table>
    
    <tr>
	<td><font color="000000">Certificate NO:</font></td>
        <td><input type="text" name="bc" value="<%=id%>" readonly="true" /></td>

</tr>
<tr>
	<td><font color="000000">Date of Birth:</font></td>
	<td><input type="date" name="dob" required="true"/></td>

</tr>
        
<tr>
	<td><font color="000000">Gender:</font></td>
	<td><input type="radio" name="gen" value="m" />Male
	<input type="radio" name="gen" value="f"/>Female</td>
</tr>
<tr>
	<td><font color="000000">child name:</font></td>
	<td><input type="text" size="20" name="childn" required="true"/></td>

</tr>
<tr>
	<td><font color="000000">Name of Father:</font></td>
	<td><input type="text" size="20" name="fathern" required="true"/></td>

</tr>
<tr>
	<td><font color="000000">Name of mother:</font></td>
	<td><input type="text" size="20" name="mothern" required="true"/></td>

</tr>
        <tr>
			<td>E-mail:</td><td><input type="email" size="15" name="email" required="true"/></td>
		</tr>
<tr>
	<td><font color="000000">Place of Birth:</font></td>
	<td><input type="checkbox"  name="birthplace"/>Hospital
	<input type="checkbox"  name="birthplace" />House
	<input type="checkbox"  name="birthplace"/>Other place</td>

</tr>
<tr>
<td valign="middle">Address:</font></td>
<td><textarea rows="10" cols="25" name="add"></textarea>
</td>
</tr>
<tr>
<td>Phone No.:</td><td><input type="text" size="10" name="phone" pattern="[0-9]{10}" maxlength="10" name="mn" required="true"/></td>
</tr>
    <tr>
	<td><font color="000000">Date:</font></td>
        <td><input type="text" name="sdate" value="<%=d%>"/></td>

</tr>
        <tr>
	<td><font color="000000">Time:</font></td>
	<td><input type="text" name="time" /></td>

</tr>
         <tr>
	<td><font color="000000">Day:</font></td>
	<td><input type="text" name="day" /></td>

</tr>
<tr>
<td colspan="2" align="center"><input type="submit" size="5" value="submit"/>
<input type="reset" size="5" value="reset"/>
			</td>
</tr>
    
</table>
</form>
<p>Note:Birth certificate will be issued subject to entry found Registered in birth record-<strong>C&DMA/Panchayats</strong></p>

</div>
<div id="col3">
  
    
</div>

</body>
</html>