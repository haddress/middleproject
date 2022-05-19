<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>

<body>

    <h3>회원가입</h3>
    <form action="../addUser.do" method="post">
        Id: <input type="text" name="Uid"><br>
        pw: <input type="password" name="Upw"><br>
        name: <input type="text" name="Uname"><br>
        tel: <input type="tel" name="Utel"><br>
        email: <input type="email" name="Uemail"><br>
        address: <input type="text" name="Uaddress"><br>      
        <input type="submit" value="회원가입">
    </form>
    
    <a href="main.jsp">첫페이지</a>

</body>

</html>