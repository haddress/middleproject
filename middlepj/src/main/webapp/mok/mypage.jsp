<%@page import="mok.UserOrderVO"%>
<%@page import="mok.ModiFyDAO"%>
<%@page import="mok.UserVO1"%>
<%@page import="mok.Markservice"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
	<%
	String id = (String) session.getAttribute("id");
	
	ModiFyDAO vo = new ModiFyDAO();
	Markservice service = new Markservice();
	service.listOrder(id);
	%>
</head>
<body>
<h3>구매리스트</h3>




    <form action="search" method="get">
        <input type="text" name="usermodfiy" id=""><br>
        <input type="hidden" name="job" value="modify">
        <input type="submit" value="회원정보수정">
    </form>
    		<input type="submit" value="수정">
		
	    <form action="search" method="get">
        <input type="hidden" name="job" value="delete">
        <input type="submit" value="탈퇴하기">
    </form>

    

</body>
</html>