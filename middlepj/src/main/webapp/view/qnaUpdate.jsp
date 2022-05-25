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
@import url('https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css');

* { 
font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui, Roboto, 'Helvetica Neue', 'Segoe UI', 'Apple SD Gothic Neo', 'Noto Sans KR', 'Malgun Gothic', sans-serif;
}
	#container {
		width:1000px;
		margin: 0 auto;
	}
	#update {
		width:500px;
		margin:auto;
	}
	.click {
		display:block;
		margin:auto;
		margin-bottom:10px;
	}
	#show {
		text-align:center;
		margin-top:30px;
		margin-bottom:20px;
	}
</style>
<title>qnaUpdate.jsp</title>
</head>
<body>
<jsp:include page="/WEB-INF/view/nav.jsp" flush="false"/>
<div id="container">

<h3 id="show">문의글 수정</h3>
<form action="${pageContext.servletContext.contextPath }/qnaUpdate.do?qnaNo=${qnadetail.qnaNo }&id=${Uid }&${list }" method="get">
	<table id="update" style="table-layout:fixed;">
		<tr>
			<th>문의글 번호</th>
			<input type="hidden" name="qnaNo" value="${qnadetail.qnaNo }">
			<td>${qnadetail.qnaNo }</td>
			<th>아이디</th>
			<td>${qnadetail.id }</td>
		</tr>
		<tr>
			<th>제목</th>
			<td><input type="text" name="qnaTitle" value="${qnadetail.qnaTitle }" style="width:300px;"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><input type="text" name="qnaContent" value="${qnadetail.qnaContent }" style= "height:100px; width:300px;"></td>
		</tr>
		<tr>
			<th>작성 날짜</th>
			<td>${qnadetail.qnaDate }</td>
		</tr>
	</table>
		<input class="click" type="submit" value="문의글 수정">
</form>
</div>
<form action="${pageContext.servletContext.contextPath }/index.jsp">
	<input class="click" type="submit" value="홈">
	</form>
<jsp:include page="/WEB-INF/view/footer.jsp" flush="false"/> 	
</body>
</html>