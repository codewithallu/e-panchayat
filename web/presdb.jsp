<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>
<%
String date=request.getParameter("date");
String notice=request.getParameter("note");
String sql="insert into PRESIDENTNOTICE values(?,?)";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,date);
ps.setString(2,notice);
int i=ps.executeUpdate();
if(i>0)
{
    %>
    <script>
        alert("posted successfully......");
        window.location="presidenthome.jsp";
    </script>
<%
}
else{
    %>
    <script>
        alert("posting failed......");
        window.location="updatenotepresident.jsp";
    </script>
<%
}
%>