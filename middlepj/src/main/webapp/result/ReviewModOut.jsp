<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	margin: 0 auto;
}
.viewAll {
	text-align: right;
}
.viewAll button {
	border: 1px solid black;
	margin-right: 4px;
}
.viewAll button:hover {
	background: #ddd;
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
		리뷰를 수정하였습니다.
		<hr>
		<div class="viewAll">
			<button type="button" onclick="location.href='${pageContext.request.contextPath}/review.do'">LIST</button>
		</div>
	</div>


	<!-- Footer -->
		<div id="foot">
			<jsp:include page="/WEB-INF/view/footer.jsp" flush="false"/>
		</div>
</body>
</html>