<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>CARE LAB</h1>
	<%
		boolean bool = true;
		Cookie[] cookieArr = request.getCookies();
		if(cookieArr != null){
			for(Cookie c : cookieArr) {
				out.print("name : " +c.getName() + "<br>");
				out.print("value : " +c.getValue() + "<br>");
				if(c.getName().equals("testCookie")) {
					bool = false;
				}
			}
		}
	
		Cookie cookie = new Cookie("testCookie","myCookie"); //쿠키설정 (name,value)
		cookie.setMaxAge(5); // 쿠키 지속 시간
		cookie.setPath("/"); // 쿠키 경로 설정(보통 최상위)		
		
		response.addCookie(cookie);
	%>
	<% if( bool ){ %>
	<script type="text/javascript">
		window.open("popup.jsp","","width=300,height=200,top=500,left=500");
	</script>
	<% } %>
</body>
</html>