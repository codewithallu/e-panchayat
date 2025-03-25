<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
                               
                        %>
</div>
<form action="csdb.jsp" method="post">
<div id="col2">
    <p><font size="3" color="000000">Please leave your complaints or suggestions below:</font></p>
    <table>
        <tr>
            <td>
                Name:
            </td>
            <td><input type="text" size="20" name="nam"/></td>
        </tr>
         <tr>
	<td valign="middle"><font color="000000">Address:</td>
        <td><textarea rows="10" cols="25" name="add"></textarea></td>

</tr>
        <tr>
	<td><font color="000000">Date:</font></td>
        <td><input type="text" name="sdate" value="<%=d%>"/></td>

</tr>
    <tr>
<td valign="middle">Complaints/</br>Suggestions:</td>
<td><textarea rows="10" cols="25" name="cs"></textarea>
</td>
</tr>

<tr>
<td colspan="2" align="center"><input type="submit" size="5" value="submit"/>
<input type="reset" size="5" value="reset"/>
			</td>
</tr>
    
</table>


</div>
<div id="col3">
  
    <h2>Notifications</h2>
      <%@include file="db.jsp" %>
<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;color:red;

}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color:#B71C1C;
    color: white;
}
</style>
<marquee direction="up">
         <table >
                                                            <th>Date</th><th>Notification</th>
                                                            
                                                            <%
                                                            
                                                        String sql="select * from NOTIFICATIONS";
                                                        Statement st=con.createStatement();
                                                        ResultSet rs=st.executeQuery(sql);
                                                        while(rs.next()){
                                                            %>
                                                            <tr>
                                                                <td><%=rs.getString(1)%></td>
                                                                <td><%=rs.getString(2)%></td>
                                                                
                                                                
                                                                
                                                            </tr>
                                                            <%
                                                        }    


                                                        %>
                                                        </table>               
                                                                          
                             </section>
                             
                             <table >
                                                           
                                                            
                                                            <%
                                                            
                                                        String sql1="select * from PRESIDENTNOTICE";
                                                        //Statement st1=con.createStatement();
                                                        ResultSet rs1=st.executeQuery(sql);
                                                        while(rs1.next()){
                                                            %>
                                                            <tr>
                                                                <td><%=rs1.getString(1)%></td>
                                                                <td><%=rs1.getString(2)%></td>
                                                                
                                                                
                                                                
                                                            </tr>
                                                            <%
                                                        }    


                                                        %>
                                                        </table>     
  
    </marquee>
  
</div>
</form>
</body>
</html>