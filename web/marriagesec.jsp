<%@page import="java.sql.PreparedStatement"%>
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
                                                            <th>Certificate NO</th><th>HusbandName</th><th>WifeName</th><th>Date</th><th>Day</th><th>Place</th><td>E-mail</td>
                                                            <%
                                                            String val=request.getParameter("val");
                                                   PreparedStatement ps=con.prepareStatement("update marriage set asts='d' where CERTIFICATENO='"+val+"' " );
                                                   int i=ps.executeUpdate();
                                                        String sql="select * from MARRIAGE where ssts='p' and asts='d'";
                                                        Statement st=con.createStatement();
                                                        ResultSet rs=st.executeQuery(sql);
                                                        while(rs.next()){
                                                            %>
                                                            <tr>
                                                                <td><%=rs.getString(1)%></td>
                                                                <td><%=rs.getString(2)%></td>
                                                                <td><%=rs.getString(4)%></td>
                                                                <td><%=rs.getString(19)%></td>
                                                                <td><%=rs.getString(17)%></td>
                                                                <td><%=rs.getString(18)%></td>
                                                                <td><%=rs.getString(12)%></td>
                                                                <td><a href="marpres1.jsp?val=<%=rs.getString(1)%>">Send to president</a></td>
                                                                
                                                            </tr>
                                                            <%
                                                        }    


                                                        %>
                                                        </table>               
                                                                          
                             </section>
</div>
<div id="col3">
  <h2>Notifications</h2>
    

<marquee direction="up">
         <table >
                                                            <th>Date</th><th>Notification</th>
                                                            
                                                            <%
                                                            
                                                        String sql2="select * from NOTIFICATIONS";
                                                        //Statement st=con.createStatement();
                                                        ResultSet rs2=st.executeQuery(sql);
                                                        while(rs2.next()){
                                                            %>
                                                            <tr>
                                                                <td><%=rs2.getString(1)%></td>
                                                                <td><%=rs2.getString(2)%></td>
                                                                
                                                                
                                                                
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
