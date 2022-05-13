<%@page import="mok.Markservice"%>
<%@page import="mok.UserVO1"%>
<%@page import="mok.ModiFyDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
</head>
<body>
	<%
	String id = (String) session.getAttribute("id");
	
		ModiFyDAO vo = new ModiFyDAO();
		Markservice service = new Markservice();
		service.ussear(id);
	%>
	
	
	
	
	
	

</body>
</html>