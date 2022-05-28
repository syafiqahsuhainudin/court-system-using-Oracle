<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import=" java.sql.Connection" %>
<%@page import=" java.sql.DriverManager" %>
<%@page import=" java.sql.ResultSet" %>
<%@page import=" java.sql.SQLException" %>
<%@page import=" java.sql.Statement" %>
<%



%>
<%
		String a = request.getParameter("type_payment");
		String b = request.getParameter("custic");
		String c = request.getParameter("book_id");
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:court/court@localhost");
		Statement pst =con.createStatement();
		pst.executeUpdate
		("insert into bill(type_payment,custic,book_id) values('"+a+"','"+b+"','"+c+"')");
		%>
		
		<script type="text/javascript">
		
		alert('Payment info updated');
		window.location='billprocess.jsp';
		</script>
</body>
</html>