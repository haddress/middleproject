<%@page import="middle.dao.qnaDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>qnaUpdate.jsp</title>
</head>
<body>

<form action="${pageContext.servletContext.contextPath }/qnaUpdate.do" method="get">
	<table border="1">
			<tr>
				<td>문의글 번호</td>
				<td>${qnadetail.qnaNo }</td>
			</tr>
			<tr>
				<td>아이디</td>
				<td>${qnadetail.id }</td>
			</tr>
				<td>작성자</td>
				<td>${qnadetail.qnaWrite }</td>
			<tr>
				<td>제목</td>
				<td><input type="text" name="qnaTitle" value="${qnadetail.qnaTitle }"></td>
			<tr>
				<td>내용</td>
				<td><input type="text" name="qnaContent" value="${qnadetail.qnaContent }"></td>
			</tr>
			<tr>
				<td>작성일</td>
				<td>${qnadetail.qnaDate }</td>
			</tr>
		</table>
	
	<input type="submit" value="문의글 수정">
</form>
</body>
</html>