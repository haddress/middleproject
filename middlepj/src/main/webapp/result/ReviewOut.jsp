<%@page import="middle.service.ReviewService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
@import url('https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css');

* { 
font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui, Roboto, 'Helvetica Neue', 'Segoe UI', 'Apple SD Gothic Neo', 'Noto Sans KR', 'Malgun Gothic', sans-serif;
}
#container {
	width: 1000px;
	margin: 20px auto;
}
#review-data {
	margin-top: 30px;
	border-collapse: collapse;
}
#tableth {
	border-top:	1px solid black;
	border-bottom: 1px solid black;
}
#tableth th {
	text-align:center;
	background: black;
	color: white;
}
.tablecon {
	border-bottom: 1px solid #ddd;
}
tr td {
	text-align:center;
}
.imgsize {
	width: 110px;
	height: 105px;
}
#title {
	text-align:left;
}
#paging {
	text-align:center;
}
.page {
	list-style:none;
	padding: 0;
}
.page li {
	display:inline;
	
}
.page li a {
	color: black;
	text-decoration: none;
}
.star {
	color: #eddd31;
}
.rwrite	{
	text-align: right;
}
.rhov:hover {
	color: #ddd;
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
		
		<div id="container">
		<h3 style="text-align:center;">리뷰</h3>
			<table width="1000" id="review-data">
				<tr id="tableth">
					<th>번호</th>
					<th></th>
					<th></th>
					<th>상품명</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
				</tr>
				<c:forEach items="${review }" var="review">
					<tr class="tablecon">
						<td width="40">${review.reviewCode }</td>
						<td class="imgsize">
							<c:choose>
								<c:when test="${review.reviewImg eq null }">
									<span></span>
								</c:when>
								<c:otherwise>
									<img src="reviewUpload/${review.reviewImg }" width="100">
								</c:otherwise>
							</c:choose>
						</td>
						<td>
							<c:choose>
								<c:when test="${review.reviewStar == 5}">
									<span class="star">★★★★★</span>
								</c:when>
								<c:when test="${review.reviewStar == 4}">
									<span class="star">★★★★☆</span>
								</c:when>
								<c:when test="${review.reviewStar == 3}">
									<span class="star">★★★☆☆</span>
								</c:when>
								<c:when test="${review.reviewStar == 2}">
									<span class="star">★★☆☆☆</span>
								</c:when>
								<c:when test="${review.reviewStar == 1}">
									<span class="star">★☆☆☆☆</span>
								</c:when>
							</c:choose>
						</td>
						<td width="180">${review.productName }</td>
						<td width="400" id="title"><a href="${pageContext.request.contextPath}/reviewDetail.do?code=${review.reviewCode }" style="text-decoration: none; color:black;">
							<span class="rhov">${review.reviewTitle }</span></a></td>
						<td width="80">${review.id }</td>
						<td>${review.reviewDate }</td>
					</tr>
				</c:forEach>
			</table>

			<!-- 페이징 -->
			<div id="paging">
			<table width="1000">
				<tr>
					<td align="center">
						<ul class="page pagination-sm">
							<!-- 이전버튼 -->
							<c:if test="${pageVO.prev }">
								<li><a href="review.do?pageNum=${pageVO.startPage - 1 }&amount=${pageVO.amount }"><span class="rhov">PREV</span></a>
							</c:if>
							
							<!-- 페이지 번호 -->
							<c:forEach var="num" begin="${pageVO.startPage }" end="${pageVO.endPage }">
								<li class="${pageVO.pageNum eq num ? 'active' : '' }">&nbsp;
								<a href="review.do?pageNum=${num }&amount=${pageVO.amount }"><span class="rhov">${num }</span></a></li>
							</c:forEach>
							
							<!-- 다음버튼 -->
							<c:if test="${pageVO.next }">
								<li><a href="review.do?pageNum=${pageVO.endPage - 1 }&amount=${pageVO.amount }"><span class="rhov">NEXT</span></a>
							</c:if>
						</ul>
					</td>
				</tr>
			</table>
			</div>
			
			<div class="rwrite">
				<form action="reviewOrderList.do" method="post" onsubmit="return idCheck();">
					<input type="hidden" name="Uid" value="${Uid }"><input type="submit" value="WRITE">
				</form>
			</div>
		</div>


	<!-- Footer -->
		<div id="foot">
			<jsp:include page="/WEB-INF/view/footer.jsp" flush="false"/>
		</div>
</body>
<script>
	
	function idCheck() {
		if('${Uid }' == '') {
			alert('로그인이 필요합니다.');
			return false;
			history.back();
		} else {
			return true;
		}
	}

</script>
</html>