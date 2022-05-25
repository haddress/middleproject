<%@page import="middle.dao.qnaDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>레이아웃</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css"/>
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
	.click {
		display:block;
		margin:auto;
		margin-bottom:10px;
	}
	h3 {
		text-align:center;
	}
</style>
<title>qnaUpdate.jsp</title>
</head>
<body>
<jsp:include page="/WEB-INF/view/nav.jsp" flush="false"/>
<div id="container">

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
				<td><input type="text" name="qnaContent" value="${qnadetail.qnaContent }" style= "height:150px; width:200px;"></td>
			</tr>
			<tr>
				<td class="td">작성일</td>
				<td>${qnadetail.qnaDate }</td>
			</tr>
		</table>
		</div>
	<input class="click" type="submit" value="문의글 수정">
</form>
</div>
<form action="${pageContext.servletContext.contextPath }/index.jsp">
	<input class="click" type="submit" value="홈">
	</form>
<jsp:include page="/WEB-INF/view/footer.jsp" flush="false"/> 	
</body>
</html>