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
<h3>수정결과페이지</h3>
	<c:if test="${!empty result }"><h4>${result }</h4></c:if>
	<h4> 수정완료..check plz</h4>
	<a href="${pageContext.servletContext.contextPath }/index.jsp">첫페이지</a>
</body>
</html>