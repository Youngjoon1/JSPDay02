<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Connection con = DBConnect.getConnect();
		System.out.println("jsp => " + con);
		String sql = "SELECT * FROM members";
		PreparedStatement ps = con.prepareStatement(sql); //전송문
		ResultSet rs = ps.executeQuery();
		System.out.println(rs);
		
		while(rs.next()) { %>
			id : <%= rs.getString("id") %><br>
			pwd : <%= rs.getString("pwd") %><br>
			name : <%= rs.getString("name") %><br>
			addr : <%= rs.getString("addr") %><br>
			tel : <%= rs.getString("tel") %><hr>
		<% } %>
		<a href="insert.jsp">등록하기</a>
</body>
</html>