<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
  
  
</div>
<form action="" method="post">
<div id="col2">
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
              
                                                        
                                                        
                                                        <table >
                                                            <th>Certificate NO</th><th>Name</th><th>DOB</th><th>FatherName</th><th>MotherName</th><th>Address</th>
                                                            <%
                                                        String sql="select * from BIRTH where asts='p'";
                                                        Statement st=con.createStatement();
                                                        ResultSet rs=st.executeQuery(sql);
                                                        while(rs.next()){
                                                            %>
                                                            <tr>
                                                                <td><%=rs.getString(1)%></td>
                                                                <td><%=rs.getString(4)%></td>
                                                                <td><%=rs.getString(2)%></td>
                                                                <td><%=rs.getString(5)%></td>
                                                                <td><%=rs.getString(6)%></td>
                                                                <td><%=rs.getString(9)%></td>
                                                                <td><a href="birthsec1.jsp?val=<%=rs.getString(1)%>">Send to secretary</a></td>
                                                                
                                                            </tr>
                                                            <%
                                                        }    


                                                        %>
                                                        </table>               
                                                                          
                             </section>
</div>
<div id="col3">
  
</div>
</form>

</body>
</html>
