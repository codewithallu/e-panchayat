<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
<div id="col2">
  <h1><u><font color="000000">Profile</font></u></h1></br>
    <table>
        <tr>
            
            <td>Name:</td><td>&nbsp</td><td>&nbsp</td><td>T.Venkaya goud</td> </tr>
           <tr> <td>Age:</td><td>&nbsp</td><td>&nbsp</td><td>60</td> </tr>
           <tr> <td>Education:</td><td>&nbsp</td><td>&nbsp</td><td>12th</td> </tr>
           <tr> <td>Designation:</td><td>&nbsp</td><td>&nbsp</td><td>Secretary</td> </tr>
            <tr><td>Term:</td><td>&nbsp</td><td>&nbsp</td><td>5years</td> </tr>
            <tr><td>Salary:</td><td>&nbsp</td><td>&nbsp</td><td>Rs.3000/-</td>
            
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

</body>
</html>
