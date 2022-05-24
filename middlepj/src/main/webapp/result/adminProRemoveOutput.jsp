<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>삭제결과페이지</h3>
	<c:if test="${!empty result }"><h4>${result }</h4></c:if>
	<h4> 삭제완료..check plz</h4>
	<a href="${pageContext.servletContext.contextPath }/index.jsp">첫페이지</a><br>
	<a href="${pageContext.servletContext.contextPath }/view/admin.jsp">관리자페이지로</a>
	<br>
</body>
</html>