<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>회원수정</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/styles.css" />
<meta charset="UTF-8">
</head>
<body>
<jsp:include page="/WEB-INF/view/nav.jsp" flush="false"/>
<br>
        <br>
        <br>
        <br>
        <br>
        <br>
<h3 style=" text-align: center;">수정완료</h3>
<br>
        <br>
        <br>
        <br>
        <br>
        <br>

<form action="${pageContext.servletContext.contextPath }/index.jsp">
<div style=" text-align: center;">
<input type="submit" value="홈" class="btn btn-primary btn-user btn-block">
</div>
</form>
<jsp:include page="/WEB-INF/view/footer.jsp" flush="false"/>
</body>
</html>