<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
비밀번호는 ${vo.upw } 입니다

	   <form action="${pageContext.servletContext.contextPath }/view/login.jsp" method="post">
 		    <input type="submit" value="로그인"/>
</form>

</body>
</html>