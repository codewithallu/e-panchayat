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
<form action=".jsp" method="post">
<div id="col2">
     <%@include file="db.jsp" %>
         
                                                         <%  
                                                         String val=request.getParameter("val");
                                                           
                                                   PreparedStatement ps=con.prepareStatement("update death set asts='d' where CERTIFICATENO='"+val+"' " );
                                                   int i=ps.executeUpdate();
                                                  if(i>0){
                                                      %>
    <script>
        alert("file no <%=val%> varified at admin level and sent to secretary sucessfully......");
        window.location="adminhome.jsp";
    </script>
<%
                                                  }
                                                       
                                                   %>
                                                                          
                             </section>
</div>
<div id="col3">
  <h2>Notifications</h2>
 
  
</div>
</form>

</body>
</html>
