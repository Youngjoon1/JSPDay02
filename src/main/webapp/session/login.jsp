<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	login.jsp<br>
	<% if(session.getAttribute("login") == null) { %>
	<form action="chkUser.jsp" method="post">
		<input type="text" name="id"><br>
		<input type="text" name="pwd">
		<input type="submit" value="전송">
	</form>
	<% }else { %>
		<%=session.getAttribute("nick")%>님 로그인상태입니다.<br>
		<a href="main.jsp">메인이동</a>		
	<% } %>
</body>
</html>