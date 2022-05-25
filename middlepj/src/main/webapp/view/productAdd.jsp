<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
@import url('https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css');

* { 
font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui, Roboto, 'Helvetica Neue', 'Segoe UI', 'Apple SD Gothic Neo', 'Noto Sans KR', 'Malgun Gothic', sans-serif;
}
#container {
	width: 1000px;
	margin: 20px auto;
}
</style>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${pageContext.servletContext.contextPath }/css/styles.css" rel="stylesheet" />
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
	<form action="../productAdd.do" method="post" enctype="multipart/form-data">
		상품카테고리: 
		<select name="pcate">
			<option value="간식">간식
			<option value="장난감">장난감
			<option value="실내용품">실내용품
			<option value="목욕/미용">목욕/미용
		</select><br>
		상품명: <input type="text" name="pname"><br>
		상품가격: <input type="text" name="pprice"><br>
		상품수량: <input type="number" name="pamount"><br>
		상품설명: <textarea name="pexp" rows="4" cols="50"></textarea><br>
		상품이미지: <input type="file" name="pimg">
		<input type="submit" value="추가">
		</form>
			</div>



<!-- Footer -->
		<div id="foot">
			<jsp:include page="/WEB-INF/view/footer.jsp" flush="false"/>
		</div>
		
</body>
</html>