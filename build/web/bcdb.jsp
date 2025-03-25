<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>

<%
String cno=request.getParameter("bc");
String dob=request.getParameter("dob");
String gen=request.getParameter("gen");
String childn=request.getParameter("childn");
String fathern=request.getParameter("fathern");
String mothern=request.getParameter("mothern");
String email=request.getParameter("email");
String birthplace=request.getParameter("birthplace");
String add=request.getParameter("add");
String phone=request.getParameter("phone");
String sdate=request.getParameter("sdate");
String time=request.getParameter("time");
String day=request.getParameter("day");
String sql="insert into birth values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,cno);
ps.setString(2,dob);
ps.setString(3,gen);
ps.setString(4,childn);
ps.setString(5,fathern);
ps.setString(6,mothern);
ps.setString(7,email);
ps.setString(8,birthplace);
ps.setString(9,add);
ps.setString(10,phone);
ps.setString(11,sdate);
ps.setString(12,time);
ps.setString(13,day);
ps.setString(14,"p");
ps.setString(15,"p");
ps.setString(16,"p");
ps.setString(17,"");
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
        window.location="birthcertificate.jsp";
    </script>
<%
}



%>