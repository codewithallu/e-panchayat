<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>president</title>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="header">
  <h1>Welcome to Gandhi Nagar Panchayat</h1>
</div>
<div id="topnav">
  <ul id="topnavlist">
 
    <li><a href="apppresident.jsp">Applications</a></li>
   <li><a href="cspresident.jsp">complaints/suggestions</a></li>
   <li><a href="notifypresident.jsp">Notifications</a></li>
   <li><a href="updatenotepresident.jsp">Update Notifications</a></li>
    <li><a href="logout.jsp">Logout</a></li>
  </ul>
</div>
<div id="gutter"></div>
<div id="col1">
  
  
</div>
<form action=".jsp" method="post">
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
                                                            <th>Certificate NO</th><th>HusbandName</th><th>WifeName</th><th>Date</th><th>Day</th><th>Place</th><th>E-mail</th>
                                                            <%
                                                            String val=request.getParameter("val");
                                                   PreparedStatement ps=con.prepareStatement("update marriage set ssts='d' where CERTIFICATENO='"+val+"' " );
                                                   int i=ps.executeUpdate();
                                                        String sql="select * from MARRIAGE where psts='p' and ssts='d'";
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
                                                                <td><a href="marriageissue.jsp?val=<%=rs.getString(1)%>">Generate certificate</a></td>
                                                                <td><a href="marriagereject.jsp?val=<%=rs.getString(1)%>">Reject</a></td>
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
