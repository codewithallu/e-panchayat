<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.sql.Date"%>
<%@page import="java.util.Random"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Marriage certificate</title>
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
<h1><font color="000000">Application for Marriage Certificate</font></h1>
</br>
<form action="mgdb.jsp" method="post">
<table>
     <tr>
	<td><font color="000000">Certificate NO:</font></td>
        <td><input type="text" name="mc" value="<%=id%>" readonly="true" /></td>

</tr>
<tr>
    <td><font color="000000">Name and Parentage of parties:</font></td>
    <td>
        <td>Husband:</td><td><input type="text" size="20" name="hus" required="true"/></td>
        <tr>&nbsp</tr>  <td>&nbsp</td><td>&nbsp</td>
        <td>Father's Name:</td><td><input type="text" size="20" name="fname" required="true"/></td>
         <tr>&nbsp</tr>  <td>&nbsp</td><td>&nbsp</td>       
         <td>wife:</td><td><input type="text" size="20" name="wife"/></td>
    </td>  
    <td>
                <tr>&nbsp</tr>    <td>&nbsp</td><td>&nbsp</td>
                <tr>&nbsp</tr>  <td>&nbsp</td><td>&nbsp</td>
                <td>Father's Name:</td><td><input type="text" size="20" name="wfname" required="true"/></td>
                <tr>&nbsp</tr>  <td>&nbsp</td><td>&nbsp</td>
                <td>Husband</td><td><input type="text" size="20" name="husb" required="true"/></td>
                <tr>&nbsp</tr>  <td>&nbsp</td><td>&nbsp</td> 
                <td>wife:</td><td><input type="text" size="20" name="wwife" required="true"/></td>
                
</td>
</tr>
    <tr>
	<td><font color="000000">Date of birth:</font></td>
        <tr>
            <td>&nbsp;</td>  <td>Husband:</td>    <td><input type="date" name="hdate" required="true"/></td></tr>
        <tr>
            <td>&nbsp;</td>  <td>wife:</td>
            <td><input type="date" name="wdate" required="true"/></td></tr>
</tr>
<tr>
	<td valign="middle"><font color="000000">permanent Address:</td>
        <td><textarea rows="10" cols="25" name="padd" required="true"></textarea></td>

</tr>
    <tr>
	<td valign="middle"><font color="000000">present Address:</td>
        <td><textarea rows="10" cols="25" name="add" required="true"></textarea></td>

</tr>
    <tr>
			<td>E-mail:</td><td><input type="text" size="15" name="email" required="true"/></td>
		</tr>
<tr>
	<td><font color="000000">Relation of parties before marriage:</td>
	<td><input type="text" size="20" name="relation"/></td>

</tr>
<tr>
	<td><font color="000000">Marriage was solemnised between<input type="text" size="20" name="hname" required="true"/>and smt
	<input type="text" size="20" name="wname" required="true"/></td>
</tr>
        <tr>
	<td><font color="000000">Date:</font></td>
        <td><input type="text" name="sdate" value="<%=d%>"/></td>

</tr>
        </tr>
        <tr>
	<td><font color="000000">Day</td>
	<td><input type="text" size="20" name="day" required="true"/></td>

</tr>
        <tr>
	<td><font color="000000">place</td>
	<td><input type="text" size="20" name="place" required="true"/></td>

</tr>
        <tr>
	<td><font color="000000">Married Date:</td>
	<td><input type="date"  name="mdate" required="true"/></td>



</tr>



<tr>
<td colspan="2" align="center"><input type="submit" size="5" value="submit"/>
<input type="reset" size="5" value="reset"/>
			</td>
</tr>
</form>
</table>


</div>
<div id="col3">
  
    
</div>

</body>
</html>