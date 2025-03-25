<%
String id=request.getParameter("user");
String pas=request.getParameter("pwd");
if(id.equals("secretary")&& pas.equals("secretary"))
       {
    %>
    <script>
        alert("secretary logged in successfully........");
        window.location="secretaryhome.jsp";
    </script>
<%
}else{
     %>
    <script>
        alert("invalid credintials plz enter a valid id and password......");
        window.location="secretary.jsp";
    </script>
<%
}
%>