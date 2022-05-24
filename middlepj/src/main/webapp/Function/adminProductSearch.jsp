<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>상품검색</h3>
	<br>
	<h4>상품코드로검색...</h4>
	<form action="../productSearch.do" method="get">
		<input type="text" name="productCode" id=""><br> <input
			type="hidden" name="job" value="search"> <input type="submit"
			value="조회">
	</form>

	<a href="${pageContext.servletContext.contextPath }/index.jsp">첫페이지</a>
</body>
</html>