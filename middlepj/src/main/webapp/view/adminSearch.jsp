<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h3>${error }</h3>
    <h3>회원검색</h3>
    <form action="../searchUser.do" method="get">
        <input type="text" name="id" id=""><br>
        <input type="hidden" name="job" value="search">
        <input type="submit" value="조회">
    </form>
    
    <a href="${pageContext.servletContext.contextPath }/index.jsp">첫페이지</a><br>
    <a href="${pageContext.servletContext.contextPath }/view/admin.jsp">관리자페이지로</a>
	<br>
</body>
</html>