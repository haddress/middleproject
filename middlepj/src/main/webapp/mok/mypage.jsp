<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
<h3>구매리스트</h3>




    <form action="search" method="get">
        <input type="text" name="usermodfiy" id=""><br>
        <input type="hidden" name="job" value="modify">
        <input type="submit" value="회원정보수정">
    </form>
    
    <form action="search" method="get">
        <input type="text" name="userdelete" id=""><br>
        <input type="hidden" name="job" value="delete">
        <input type="submit" value="회원정보수정">
    </form>
    

</body>
</html>