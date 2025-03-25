<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>

<%
String cno=request.getParameter("dc");
String dod=request.getParameter("dod");
String gen=request.getParameter("gen");
String deathn=request.getParameter("deathn");
String age=request.getParameter("age");
String deathplace=request.getParameter("deathplace");

String informn=request.getParameter("informn");
String email=request.getParameter("email");
String add=request.getParameter("add");
String sdate=request.getParameter("sdate");
String loc=request.getParameter("location");
String day=request.getParameter("day");
String sql="insert into death values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,cno);
ps.setString(2,dod);
ps.setString(3,gen);
ps.setString(4,deathn);
ps.setString(5,age);
ps.setString(6,deathplace);
ps.setString(7,informn);
ps.setString(8,email);
ps.setString(9,add);
ps.setString(10,sdate);
ps.setString(11,loc);
ps.setString(12,day);
ps.setString(13,"p");
ps.setString(14,"p");
ps.setString(15,"p");
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
        window.location="deathcertificate.jsp";
    </script>
<%
}

%>