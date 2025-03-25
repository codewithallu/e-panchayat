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
                                                   PreparedStatement ps=con.prepareStatement("update birth set ssts='d' where BIRTHCERTIFICATENO='"+val+"' " );
                                                   int i=ps.executeUpdate();
                                                   String sql="select * from BIRTH where BIRTHCERTIFICATENO='"+val+"' and psts='p'";
                                                        Statement st=con.createStatement();
                                                        ResultSet rs=st.executeQuery(sql);
                                                        rs.next();
                                                        String name=rs.getString(4);
                                                        String fn=rs.getString(5);
                                                        String mn=rs.getString(6);
                                                        String time=rs.getString(12);
                                                         String day=rs.getString(13);
                                                          String date=rs.getString(2);
                                                          String em=rs.getString(7);
                                                          
                                                          String isd=new java.util.Date().toString();
                                                          String msg="Your birth certificate has been issued by president on"+isd;
                                                           PreparedStatement ps1=con.prepareStatement("update birth set psts='d' where BIRTHCERTIFICATENO='"+val+"' " );
                                                   int j=ps1.executeUpdate();
                                                   services.ss.mail(em, msg);
                                                   
                                                   %>
    <center>
        <div style="width:800px; height:600px; padding:20px; text-align:center; border: 10px solid #787878">
<div style="width:750px; height:550px; padding:20px; text-align:center; border: 5px solid #787878">
        <h1 style="font-family:Edwardian Script ITC" ><font color="000000" size="10">Certificate of Birth</font></h1>
        <br><p><font size="3">
                    This is to certify that <b> <%=name%></b></br> was born to <%=fn%> and <%=mn%></br> in this hospital at <%=time%> a.m/p.m , </br> <%=day%>  of <%=date%> A.D </font>
                    <p>Signature:</p>
                    <p><u><i>subbarao</i></u></p>
        
                <p><font size="3">In witness where of the said hospital has caused this certificate to be signed by its only authorized officers and its seal to be honorable offixed</font></p> 
                </div>
        </div>
</div>
<div id="col3">
  
    
 
  
</div>
</center>
</body>
</html>
