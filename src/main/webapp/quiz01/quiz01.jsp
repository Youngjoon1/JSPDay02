<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	<h1>게시글 입니다</h1>
	<h3>조회수 올리기 문제입니다</h3>
	<%
		String cnt = (String)application.getAttribute("cnt");
		out.print(cnt);
		if(cnt == null){
			application.setAttribute("cnt", 1 + "");
		}else {
			int c = Integer.parseInt(cnt);
			application.setAttribute("cnt", ++c + "");
		}
	%>
	<a href="main.jsp">돌아가기</a>
</body>
</html>