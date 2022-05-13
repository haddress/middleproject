<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
</head>
<body>
<form action="${pageContext.servletContext.contextPath }/modifyUser.do" method="post">
	ID: <input type="text" name="Uid" readonly value="${bookm.bookCode }"><br>
	Password: <input type="text" name="Upw" value="${bookm.bookTitle }"><br>
	이름:  <input type="text" name="Uname" value="${bookm.bookAuthor }"><br>
	전화번호: <input type="text" name="Utel" value="${bookm.bookPress }"><br>
	이메일: <input type="number" name="Uemail" value="${bookm.bookPrice }"><br>
	주소: <input type="number" name="Uadress" value="${bookm.bookPrice }"><br>
	<input type="submit" value="수정">
	</form>
</body>
</html>