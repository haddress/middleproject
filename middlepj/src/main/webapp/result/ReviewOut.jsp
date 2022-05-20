<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<table border="1">
				<tr>
					<th>번호</th>
					<th>이미지</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
				</tr>
				<c:forEach item="${review }" var="review">
					<tr>
						<td>${review.reviewCode }</td>
						<td>${review.reviewImg }</td>
						<td>${review.reviewTitle }</td>
						<td>${review.id }</td>
						<td>${review.reviewDate }</td>
					</tr>
				</c:forEach>
			</table>
			<form action="../reviewOrderList.do" method="post">
				<input type="hidden" name="Uid" value="${Uid }"><input type="submit" value="리뷰쓰기">
			</form>
		</div>


	<!-- Footer -->
		<div id="foot">
			<jsp:include page="/view/footer.jsp"/>
		</div>
</body>
</html>