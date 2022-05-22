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
	margin: 0 auto;
}
tr th {
	text-align:center;
}
tr td {
	text-align:center;
}
#title {
	text-align:left;
}
</style>
</head>
<body>
	<!-- Header -->
		<div id="head">
			<jsp:include page="/view/header.jsp"/>
		</div>
		<br>
		<br>
		
		
		<div id="container">
			<table width="1000">
				<tr>
					<th>번호</th>
					<th></th>
					<th></th>
					<th>상품명</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
				</tr>
				<c:forEach items="${review }" var="review">
					<tr>
						<td width="40">${review.reviewCode }</td>
						<td width="110"><img src="reviewUpload/${review.reviewImg }" width="100"></td>
						<td>
							<c:choose>
								<c:when test="${review.reviewStar == 5}">
									★★★★★
								</c:when>
								<c:when test="${review.reviewStar == 4}">
									★★★★☆
								</c:when>
								<c:when test="${review.reviewStar == 3}">
									★★★☆☆
								</c:when>
								<c:when test="${review.reviewStar == 2}">
									★★☆☆☆
								</c:when>
								<c:when test="${review.reviewStar == 1}">
									★☆☆☆☆
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
			
			
			<div class="pager">
				<ul>
				<c:if test="${ curPageNum > 5 && !empty kwd }">
					<li><a href="/mysite/board?page=${ blockStartNum - 1 }&kwd=${ kwd }">◀</a></li>
				</c:if>
        
				<c:if test="${ curPageNum > 5 }">
				<li><a href="/mysite/board?page=${ blockStartNum - 1 }">◀</a></li>
				</c:if>
        
				<c:forEach var="i" begin="${ blockStartNum }" end="${ blockLastNum }">
					<c:choose>
						<c:when test="${ i > lastPageNum }">
							<li>${ i }</li>
						</c:when>
						<c:when test="${ i == curPageNum }">
							<li class="selected">${ i }</li>
						</c:when>
						<c:when test="${ !empty kwd}">
							<li><a href="/mysite/board?a=search&page=${ i }&kwd=${ kwd }">${ i }</a></li>
 						</c:when>
						<c:otherwise>
 							<li><a href="/mysite/board?page=${ i }">${ i }</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
        
				<c:if test="${ lastPageNum > blockLastNum && !empty kwd }">
					<li><a href="/mysite/board?a=search&page=${ blockLastNum + 1 }&kwd=${ kwd }">▶</a></li>
				</c:if>
        
				<c:if test="${ lastPageNum > blockLastNum }">
					<li><a href="/mysite/board?page=${ blockLastNum + 1 }">▶</a></li>
				</c:if>
			</ul>
			</div>  
			
			<form action="reviewOrderList.do" method="post" onsubmit="return idCheck();">
				<input type="hidden" name="Uid" value="${Uid }"><input type="submit" value="리뷰쓰기">
			</form>
		</div>


	<!-- Footer -->
		<div id="foot">
			<jsp:include page="/view/footer.jsp"/>
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