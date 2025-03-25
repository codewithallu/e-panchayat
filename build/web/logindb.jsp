<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="db.jsp" %>
<%
String un=request.getParameter("user");
String pas=request.getParameter("pwd");System.out.println(un+""+pas);

String sql="select * from USERREGISTER where UNAME='"+un+"' and PASSWORD='"+pas+"'";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(sql);
if(rs.next()){
     %>
    <script>
        alert("login success......");
        window.location="userhome.jsp";
    </script>
<%
}
else{
    %>
    <script>
        alert("login failed......");
        window.location="login.jsp";
    </script>
<%
}
%>