<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>addQnaOutput.jsp</title>
</head>
<body>
	<h3>${writer }님의 문의글 작성이 완료되었습니다!</h3>
	
	<form action="${pageContext.servletContext.contextPath }/index.jsp">
	<input type="submit" value="홈">
	</form>
</body>
</html>