<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	h3 {
		text-align:center;
	}
	input {
		display:block;
		margin:auto;
	}
</style>
<title>updateqnaOutput.jsp</title>
</head>
<body>
	<h3>문의글 수정이 완료되었습니다.</h3>
	<form action="${pageContext.servletContext.contextPath }/index.jsp">
	<input type="submit" value="홈">
	</form>
</body>
</html>