<%@page import="middle.dao.qnaDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	#container {
		width:1000px;
		margin: 0 auto;
	}
	#updatetable {
		width:1000px;
		margin:auto;
	}
	#update {
		margin:auto;
	}
	.td {
		display:inline-block;
		margin-right:20px;
	}
	h3 {
		text-align:center;
	}
	#updatebt {
		margin-bottom:10px;
	}
</style>
<title>qnaUpdate.jsp</title>
</head>
<body>
<div id="container">
<!-- Header -->
		<div id="head">
			<jsp:include page="header.jsp"/>
		</div>
		<br>
		<br>
<h3>문의글 수정</h3>
<form action="${pageContext.servletContext.contextPath }/qnaUpdate.do?qnaNo=${qnadetail.qnaNo }" method="get">
	<div id="updatetable">
	<table id="update">
			<tr>
				<td class="td">문의글 번호</td>
				<input type="hidden" name="qnaNo" value="${qnadetail.qnaNo }">
				<td>${qnadetail.qnaNo }</td>
			</tr>
			<tr>
				<td class="td">아이디</td>
				<td>${qnadetail.id }</td>
			</tr>
				<td class="td">작성자</td>
				<td>${qnadetail.qnaWrite }</td>
			<tr>
				<td class="td">제목</td>
				<td><input type="text" name="qnaTitle" value="${qnadetail.qnaTitle }"></td>
			<tr>
				<td class="td">내용</td>
				<td><textarea name="qnaContent" value="${qnadetail.qnaContent }"></textarea></td>
			</tr>
			<tr>
				<td class="td">작성일</td>
				<td>${qnadetail.qnaDate }</td>
			</tr>
		</table>
		</div>
	<input type="submit" value="문의글 수정" id="updatebt">
</form>
<form action="${pageContext.servletContext.contextPath }/index.jsp">
	<input type="submit" value="홈">
	</form>
<!-- Footer -->
		<div id="foot">
			<jsp:include page="footer.jsp"/>
		</div>		
</body>
</html>