<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dao.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>인적사항</h1>
	<% 
		Connection con = DBConnect.getConnect();	
		
		String sql = "SELECT * FROM student";
		
		PreparedStatement ps = con.prepareStatement(sql);
		
		ResultSet rs = ps.executeQuery();
		
	%>
	
	<%= request.getParameter("id") %> 
	
	<% while(rs.next()) { 
		if(rs.getString("id").equals(request.getParameter("id"))){
			
		}
	 } %>
	
</body>
</html>