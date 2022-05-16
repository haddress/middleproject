<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="/login.do" method="post">
        Id: <input type="text" name="Uid"><br>
        pw: <input type="password" name="Upw"><br>
</form>
<form action="" method="post">
<input type = "submit" value ="로그인">
</form>
<form action="add.jsp" method="post">
<input type ="submit" value = "회원가입">

</form>



<a href="main.jsp">첫페이지</a>
</body>
</html>