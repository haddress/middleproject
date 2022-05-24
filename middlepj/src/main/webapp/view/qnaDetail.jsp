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
<script>
	function deleteQna(no) {
		var confirmed = confirm("삭제하시겠습니까?");
		if(confirmed) {
			location.href = "qnaDelete.do?qnaNo="+no;

		}
	}
	
</script>
<style type="text/css">
	#detail {
		margin:auto;
	}
	input {
		margin-bottom:10px;
	}
	#h3 {
		display:block;
		text-align:center;
		margin:20px;
	}
	#detail {
		margin-bottom:10px;
	}
	.td {
		display:inline-block;
		margin-right:30px;
	}
	#log {
		text-align:center;
	}
	#only {
		text-align:center;
	}
	#del {
		display:block;
		margin:auto;
		margin-bottom:10px;
	}
</style>

<title>qnaDetail.jsp</title>
</head>
<body>
<jsp:include page="/WEB-INF/view/nav.jsp" flush="false"/>
<div id="container">
<c:choose>
	<c:when test="${empty Uid }"><h3 id="log">로그인 후 이용가능합니다.</h3>
				<p><a href="view/login.jsp">로그인하기</a></p>
	</c:when>
	<c:when test="${qnadetail.id != Uid } & ${Uid != 'admin' }">
		<h3 id="only">작성자만 볼 수 있습니다.</h3>
	</c:when>
	<c:when test="${qnadetail.id == Uid }">
		<h3 id="h3">문의글 상세보기</h3>
		
		<div id="detailtable">
		<form>
		<table id="detail">
			<tr>
				<td class="td">문의글 번호</td>
				<td>${qnadetail.qnaNo }</td>
			</tr>
			<tr>
				<td class="td">아이디</td>
				<td>${qnadetail.id }</td>
			</tr>
			<tr>
				<td class="td">제목</td>
				<td>${qnadetail.qnaTitle }</td>
			<tr>
				<td class="td">내용</td>
				<td>${qnadetail.qnaContent }</td>
			</tr>
			<tr>
				<td class="td">작성일</td>
				<td>${qnadetail.qnaDate }</td>
			</tr>
		</table>
		</form>
		</div>
		<div style="text-align:center; margin-bottom:20px;">
			<button type="button" onclick="deleteQna('${qnadetail.qnaNo }');">문의글 삭제</button>
			<a href="${pageContext.servletContext.contextPath }/detail.do?job=update&qnaNo=${qnadetail.qnaNo }">
				<input type="submit" value="수정">
			</a>
		</div>
	</c:when>
	<c:when test="${Uid == 'admin' }">
		<h3 id="h3">문의글 상세보기</h3>
		
		<div id="detailtable">
		<form>
		<table id="detail">
			<tr>
				<td class="td">문의글 번호</td>
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
				<td>${qnadetail.qnaTitle }</td>
			<tr>
				<td class="td">내용</td>
				<td>${qnadetail.qnaContent }</td>
			</tr>
			<tr>
				<td class="td">작성일</td>
				<td>${qnadetail.qnaDate }</td>
			</tr>
		</table>
		</form>
		</div>
		</div>
			<button type="button" onclick="deleteQna('${qnadetail.qnaNo }');" id="del">문의글 삭제</button>
	</c:when>
</c:choose>	
</div>
<jsp:include page="/WEB-INF/view/footer.jsp" flush="false"/> 
</body>
</html>