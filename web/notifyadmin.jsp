<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Random"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin</title>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="header">
  <h1>Welcome to Gandhi Nagar Panchayat</h1>
</div>
<div id="topnav">
  <ul id="topnavlist">
    
    <li><a href="applicationadmin.jsp">Applications</a></li>
    <li><a href="csadmin.jsp">complaints/suggestions</a></li>
    <li><a href="notifyadmin.jsp">Notifications</a></li>
    <li><a href="upadmin.jsp">Update president</a></li>
    <li><a href="usadmin.jsp">Update Secretary</a></li>
    <li><a href="logout.jsp">Logout</a></li>
  </ul>
</div>
<div id="gutter"></div>
<div id="col1">
  <%
  java.util.Date d=new java.util.Date();
                               
                        %>
  
</div>
                        
<div id="col2">
    <form action="noticedb.jsp" method="post">
    <center><table>
            <tr>
	<td><font color="000000">Date:</font></td>
        <td><input type="text" name="date" value="<%=d%>"/></td>

</tr>
  <tr>
<td valign="middle">Notification:</font></td>
<td><textarea rows="10" cols="25" name="note"></textarea>
</td>
</tr>
        <td align="center"><input type="submit" size="5" value="post"/>
<input type="reset" size="5" value="reset"/>
			</td>
        </table>
    </center>
   </form>
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

</body>
</html>
