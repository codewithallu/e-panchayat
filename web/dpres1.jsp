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
    <li><a href="cssecretary.jsp">complaints/suggestions</a></li>
    <li><a href="notifysecretary.jsp">Notification</a></li>
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
                                                           
                                                   PreparedStatement ps=con.prepareStatement("update death set ssts='d' where CERTIFICATENO='"+val+"' " );
                                                   int i=ps.executeUpdate();
                                                  if(i>0){
                                                      %>
    <script>
        alert("file no <%=val%> varified at secretary level and sent to president sucessfully......");
        window.location="secretaryhome.jsp";
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
