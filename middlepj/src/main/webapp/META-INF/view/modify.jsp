<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
    <h3>회원정보수정</h3>
    <form action="${pageContext.servletContext.contextPath }/searchBook.do" method="get">
       비밀번호 입력 <input type="text" name="passwd" id=""><br>
        <input type="hidden" name="job" value="modify">
        <input type="submit" value="조회">
</form>
</body>
</html>