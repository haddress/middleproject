
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
	
	#h3 {
		display:block;
		text-align:center;
		margin:20px;
		
	}
	#noqna {
		text-align:center;
	}
	table {
		width:1100px;
		margin:auto;
		text-align:center;
	}
	#list {
		border-collapse:collapse;
	}
	.trlist {
		border-bottom:1px solid gray;
	}
	td {
		width:50px;
		padding:10px;
	}
	#top {
		background-color:black;
	}
	.th {
		color:white;
	}
	#addbtn {
		display:block;
		width:80px;
		margin:auto;
		margin-bottom:10px;
	}
	#addbtn:hover {
	font-weight: 700;
	}
	a:link {
		color:black;
		text-decoration:none;
	}
	a:visited {
		color:black;
	}
	.qwrite{
		margin: 0 auto;
		width: 1100px;
		text-align: right;
	}
	#text {
		text-decoration:none;
	}
	ul {
		list-style:none;
	}
	li {
		list-style:none;
		display:inline;
		margin-right:50px;
	}
</style>
</head>
<body>
	<!-- Header -->
		<div id="head">
			<jsp:include page="/WEB-INF/view/nav.jsp" flush="false"/>
		</div>
		<br>
		<br>
		
		<jsp:include page="/WEB-INF/view/banner.jsp" flush="false"/>
<div>
		<c:if test="${!empty delete }">
			<script>
			alert(${delete });
			</script>
			<%request.getSession().removeAttribute("delete"); %>
		</c:if>
 <c:choose> 
	<c:when test="${empty list }"><h3 id="noqna">문의글 정보가 없습니다</h3>
	<div class="qwrite">
	<a href="view/qnaWrite.jsp?id=${Uid }" id="text">
		<input  type="submit" value="글쓰기" id="addbtn">
	</a>
	</div>
	</c:when>
	<c:when test="${empty Uid }">
		<div id="container">
	<table id="list">
	<thead>
		<tr class="trlist" id="top">
			<th class="th">카테고리</th>
			<th class="th">문의번호</th>
			<th class="th">제목</th>
			<th class="th">작성일</th>
		</tr>
	 </thead>
	 <tbody>
		 <c:forEach var="list" items="${list }" >
			<tr class="trlist"><td>${list.qnaCategory }</td><td>${list.qnaNo }</td><td><a href="detail.do?job=detail&qnaNo=${list.qnaNo }&id=${Uid }">${list.qnaTitle }</a></td><td>${list.qnaDate }</td>
			</tr>
		</c:forEach>
		
	 </tbody>
	</table>
</div>
	</c:when>
	<c:otherwise>
	<h3 id="h3">고객센터</h3>
<div id="container">
	<table id="list">
	<thead>
		<tr class="trlist" id="top">
			<th class="th">카테고리</th>
			<th class="th">문의번호</th>
			<th class="th">제목</th>
			<th class="th">작성일</th>
		</tr>
	 </thead>
	 <tbody>
		 <c:forEach var="list" items="${list }" >
			<tr class="trlist"><td>${list.qnaCategory }</td><td>${list.qnaNo }</td><td><a href="detail.do?job=detail&qnaNo=${list.qnaNo }&id=${Uid }">${list.qnaTitle }</a></td><td>${list.qnaDate }</td>
			</tr>
		</c:forEach>
		
	 </tbody>
	</table>
</div>
	<!-- 문의글 페이징 -->
	<table>
		<tr>
			<td>
				<ul>
					<!-- 이전버튼 -->
					<c:if test="${pageVO.prev }">
						<li><a href="qna.do?pageNum=${pageVO.startPage - 1 }&amount=${pageVO.amount }">PREV</a></li>
					</c:if>
					<!-- 페이지 번호 -->
					<c:forEach var="num" begin="${PageVO.startPage +1}" end="${pageVO.endPage }">
						<li class="${pageVO.pageNum eq num ? 'active' : '' }">&nbsp;
						<a href="qna.do?pageNum=${num }&amount=${pageVO.amount }">${num }</a></li>
					</c:forEach>
					<!-- 다음버튼 -->
					<c:if test="${pageVO.next }">
								<li><a href="qna.do?pageNum=${pageVO.endPage - 1 }&amount=${pageVO.amount }">NEXT</a></li>
							</c:if>
				</ul>
			</td>
		</tr>
	</table>
	<div class="qwrite">
	<a href="view/qnaWrite.jsp?id=${Uid }" id="text">
		<input type="submit" value="글쓰기" id="addbtn">
	</a>
	</div>
	 </c:otherwise>
	</c:choose>  
	
</div>
	<jsp:include page="/WEB-INF/view/footer.jsp" flush="false"/> 
</body>
</html>