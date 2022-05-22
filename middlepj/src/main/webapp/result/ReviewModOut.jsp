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
			<jsp:include page="/view/header.jsp"/>
		</div>
		<br>
		<br>


	<div id="container">
		리뷰를 수정하였습니다.
		<hr>
		<button type="button" onclick="location.href='${pageContext.request.contextPath}/review.do'">목록</button>
	</div>


	<!-- Footer -->
		<div id="foot">
			<jsp:include page="/view/footer.jsp"/>
		</div>
</body>
</html>