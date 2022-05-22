<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.servletContext.contextPath }/delete.do" method="get">
        탈퇴하시겠습니까?
        <input type="submit" value="탈퇴">
    </form>
</body>
</html>