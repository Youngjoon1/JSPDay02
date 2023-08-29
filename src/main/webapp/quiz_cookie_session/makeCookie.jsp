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
	Cookie cookie = new Cookie("cook","myCookie");
	cookie.setMaxAge(60*60*24);
	cookie.setPath("/");
	response.addCookie(cookie);
	%>
	
	<input type="button" onclick="">
	<script>
		window.close();
	</script>
</body>
</html>