<%
String id=request.getParameter("user");
String pas=request.getParameter("pwd");
if(id.equals("president")&& pas.equals("president"))
       {
    %>
    <script>
        alert("president logged in successfully........");
        window.location="presidenthome.jsp";
    </script>
<%
}else{
     %>
    <script>
        alert("invalid credintials plz enter a valid id and password......");
        window.location="president.jsp";
    </script>
<%
}
%>