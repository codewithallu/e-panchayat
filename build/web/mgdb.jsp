<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>

<%
String cno=request.getParameter("mc");
String hus=request.getParameter("hus");
String fname=request.getParameter("fname");
String wife=request.getParameter("wife");
String wfname=request.getParameter("wfname");
String husb=request.getParameter("husb");
String wwife=request.getParameter("wwife");
String hdate=request.getParameter("hdate");
String wdate=request.getParameter("wdate");
String padd=request.getParameter("padd");
String add=request.getParameter("add");
String email=request.getParameter("email");
String rel=request.getParameter("relation");
String hname=request.getParameter("hname");
String wname=request.getParameter("wname");
String sdate=request.getParameter("sdate");
String day=request.getParameter("day");
String place=request.getParameter("place");
String mdate=request.getParameter("mdate");



String sql="insert into marriage values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,cno);
ps.setString(2,hus);
ps.setString(3,fname);
ps.setString(4,wife);
ps.setString(5,wfname);
ps.setString(6,husb);
ps.setString(7,wwife);
ps.setString(8,hdate);
ps.setString(9,wdate);
ps.setString(10,padd);
ps.setString(11,add);
ps.setString(12,email);
ps.setString(13,rel);
ps.setString(14,hname);
ps.setString(15,wname);
ps.setString(16,sdate);
ps.setString(17,day);
ps.setString(18,place);
ps.setString(19,mdate);
ps.setString(20,"p");
ps.setString(21,"p");
ps.setString(22,"p");



int i=ps.executeUpdate();
if(i>0)
{
    %>
    <script>
        alert("Submitted successfully......");
        window.location="applications.jsp";
    </script>
<%
}
else{
    %>
    <script>
        alert("submission failed......");
        window.location="marriage.jsp";
    </script>
<%
}

%>