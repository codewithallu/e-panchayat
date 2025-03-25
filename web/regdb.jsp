
<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>
<% 
String un=request.getParameter("user");
String pwd=request.getParameter("pas");
String cpwd=request.getParameter("cas");
String phno=request.getParameter("pno");
String acno=request.getParameter("acno");
String dob=request.getParameter("DOB");
String email=request.getParameter("email");
String wn=request.getParameter("wn");
String sql="insert into userregister values(?,?,?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,un);
ps.setString(2,pwd);
ps.setString(3,cpwd);
ps.setString(4,phno);
ps.setString(5,acno);
ps.setString(6,dob);
ps.setString(7,email);
ps.setString(8,wn);
int i=ps.executeUpdate();
if(i>0)
{
    %>
    <script>
        alert("registration success......");
        window.location="login.jsp";
    </script>
<%
}
else{
    %>
    <script>
        alert("registration success......");
        window.location="login.jsp";
    </script>
<%
}
%>