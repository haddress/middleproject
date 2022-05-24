<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="logincheck.jsp" method="post">
        Id: <input type="text" name="Uid"><br>
        pw: <input type="password" name="Upw"><br>
        <input type = "submit" value ="로그인">
</form>


<form action="add.jsp" method="post">
<input type ="submit" value = "회원가입">

</form>

<form action="idfind.jsp" method="post">
<input type = "submit" value ="아이디찾기">
</form>



<a href="${pageContext.servletContext.contextPath }/index.jsp">첫페이지</a>
</body>
</html>