<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>birth certificate</title>
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
<div id="col2">
   <%@include file="db.jsp" %> 
    <%
                                                            String val=request.getParameter("val");
                                                   PreparedStatement ps=con.prepareStatement("update death set ssts='d' where CERTIFICATENO='"+val+"' " );
                                                   int i=ps.executeUpdate();
                                                   String sql="select * from DEATH where CERTIFICATENO='"+val+"' and psts='p'";
                                                        Statement st=con.createStatement();
                                                        ResultSet rs=st.executeQuery(sql);
                                                        rs.next();
                                                        
                                                          String em=rs.getString(8);
                                                          String isd=new java.util.Date().toString();
                                                          String msg="Your death certificate has been Rejected by president on"+isd;
                                                           PreparedStatement ps1=con.prepareStatement("update death set psts='d' where CERTIFICATENO='"+val+"' " );
                                                   int j=ps1.executeUpdate();
                                                   services.ss.mail(em, msg);
                                                   
                                                   %>
    
    
</div>
<div id="col3">
  
 
  
</div>
</center>
</body>
</html>
