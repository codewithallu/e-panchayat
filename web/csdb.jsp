<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>
<%
String cs=request.getParameter("cs");
String name=request.getParameter("nam");
String add=request.getParameter("add");
String date=request.getParameter("sdate");
String sql="insert into complaints values(?,?,?,?)";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,cs);
ps.setString(2,name);
ps.setString(3,add);
ps.setString(4,date);
int i=ps.executeUpdate();
if(i>0)
{
    %>
    <script>
        alert("Submitted successfully......");
        window.location="complaints.jsp";
    </script>
<%
}
else{
    %>
    <script>
        alert("submission failed......");
        window.location="complaints.jsp";
    </script>
<%
}
%>