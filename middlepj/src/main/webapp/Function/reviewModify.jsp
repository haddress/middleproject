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
</style>
</head>
<body>
<!-- Header -->
		<div id="head">
			<jsp:include page="/WEB-INF/view/nav.jsp" flush="false"/>
		</div>
		<br>
		<br>

	<div id="container">
	<form action="reviewModify.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="rcode" value="${review.reviewCode }">
		제목: <input type="text" name="rtitle" value="${review.reviewTitle }"><br>
		주문상품: ${review.productName }
		<select name="rstar">
			<option value="5">★★★★★
			<option value="4">★★★★☆
			<option value="3">★★★☆☆
			<option value="2">★★☆☆☆
			<option value="1">★☆☆☆☆
		</select><br>
		<textarea name="rcontent" rows="5" cols="50">${review.reviewContent }</textarea><br>
		첨부이미지: <input type="file" name="rimg"><br>
		<input type="submit" value="수정">
		<button type="button" onclick="history.back(-1)">취소</button>
	</form>
	</div>



<!-- Footer -->
		<div id="foot">
			<jsp:include page="/WEB-INF/view/footer.jsp" flush="false"/>
		</div>
</body>
</html>