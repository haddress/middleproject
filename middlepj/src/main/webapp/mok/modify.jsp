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
	<form action="/modifyBook.do" method="post">
    			<input type="hidden" name="code" value="${book.bookCode }"><br>
        	제목: <input type="text" name="title" value="${book.bookTitle }"><br>
        	저자: <input type="text" name="author" value="${book.bookAuthor }"><br>
        	출판사: <input type="text" name="press" value="${book.bookPress }"><br>
        	가격: <input type="text" name="price" value="${book.bookPrice }"><br>
        	<input type="submit" value="수정">
	
	</form>
	
	
	

</body>
</html>