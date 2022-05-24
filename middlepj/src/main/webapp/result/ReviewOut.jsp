<%@page import="middle.service.ReviewService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
#container {
	width: 1000px;
	margin: 20px auto;
}
review-data {
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
#title {
	text-align:left;
}
#paging {
	text-align:center;
}
.page {
	list-style:none;
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
						<td width="110"><img src="reviewUpload/${review.reviewImg }" width="100"></td>
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
						<td width="150">${review.productName }</td>
						<td width="400" id="title"><a href="${pageContext.request.contextPath}/reviewDetail.do?code=${review.reviewCode }" style="text-decoration: none; color:black;">${review.reviewTitle }</a></td>
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
								<li><a href="review.do?pageNum=${pageVO.startPage - 1 }&amount=${pageVO.amount }">PREV</a>
							</c:if>
							
							<!-- 페이지 번호 -->
							<c:forEach var="num" begin="${pageVO.startPage }" end="${pageVO.endPage }">
								<li class="${pageVO.pageNum eq num ? 'active' : '' }">&nbsp;
								<a href="review.do?pageNum=${num }&amount=${pageVO.amount }">${num }</a></li>
							</c:forEach>
							
							<!-- 다음버튼 -->
							<c:if test="${pageVO.next }">
								<li><a href="review.do?pageNum=${pageVO.endPage - 1 }&amount=${pageVO.amount }">NEXT</a>
							</c:if>
						</ul>
					</td>
				</tr>
			</table>
			</div>
			
			<form action="reviewOrderList.do" method="post" onsubmit="return idCheck();">
				<input type="hidden" name="Uid" value="${Uid }"><input type="submit" value="리뷰쓰기">
			</form>
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