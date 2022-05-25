<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	#show {
		text-align:center;
		margin-top:30px;
		margin-bottom:30px;
	}
	#home {
		display:block;
		margin:auto;
		margin-bottom:30px;
	}
</style>
<title>addQnaOutput.jsp</title>
</head>
<body>
<jsp:include page="/WEB-INF/view/nav.jsp" flush="false"/>
	<h3 id="show">문의글 작성이 완료되었습니다!</h3>
	
	<form action="${pageContext.servletContext.contextPath }/index.jsp">
	<input type="submit" value="홈" id="home">
	</form>
<jsp:include page="/WEB-INF/view/footer.jsp" flush="false"/> 
</body>
</html>