<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","epanchayat","epanchayat");
%>