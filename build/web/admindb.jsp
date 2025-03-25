<%
String id=request.getParameter("user");
String pas=request.getParameter("pwd");
if(id.equals("admin")&& pas.equals("admin"))
       {
    %>
    <script>
        alert("admin logged in successfully........");
        window.location="adminhome.jsp";
    </script>
<%
}else{
     %>
    <script>
        alert("invalid credintials plz enter a valid id and password......");
        window.location="admin.jsp";
    </script>
<%
}
%>