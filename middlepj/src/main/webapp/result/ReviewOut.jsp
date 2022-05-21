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
			<table border="1" width="1000">
				<tr>
					<th>번호</th>
					<th>이미지</th>
					<th>상품명</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
				</tr>
				<c:forEach items="${review }" var="review">
					<tr>
						<td width="40">${review.reviewCode }</td>
						<td width="110"><img src="reviewUpload/${review.reviewImg }" width="100"></td>
						<td width="150">${review.productName }</td>
						<td width="400"><a href="${pageContext.request.contextPath}/reviewDetail.do?code=${review.reviewCode }" style="text-decoration: none; color:black;">${review.reviewTitle }</a></td>
						<td width="80">${review.id }</td>
						<td>${review.reviewDate }</td>
					</tr>
				</c:forEach>
			</table>
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