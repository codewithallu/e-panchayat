<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>secretary</title>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="header">
  <h1>Welcome to Gandhi Nagar Panchayat</h1>
</div>
<div id="topnav">
  <ul id="topnavlist">
    
    <li><a href="appsecretary.jsp">Applications</a></li>
    <li><a href="cssec.jsp">complaints/suggestions</a></li>
    <li><a href="notifysec.jsp">Notification</a></li>
    <li><a href="logout.jsp">Logout</a></li>
  </ul>
</div>
<div id="gutter"></div>
<div id="col1">
  
  
</div>
<div id="col2">
  <table>
        <center>
  <tr>
                    <td><a href="birthsec.jsp" >Birth Application</a></td></tr>
            <tr>
		
		
			<td><a href="marriagesec.jsp" >Marriage Application</a></td>
            </tr>
        
		<tr>
			<td><a href="dsec.jsp" >Death Application</a></td>
		
                </tr>
        </center>
            
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

</body>
</html>
