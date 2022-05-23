<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
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
</head>
<body>
	<table>
		<!--menu navigation bar -->

			<jsp:include page="/WEB-INF/view/nav.jsp" flush="false"/>
			
			<!--banner area  -->
			
			<jsp:include page="/WEB-INF/view/banner.jsp" flush="false" />

		<!--main contents -->

			<jsp:include page="/WEB-INF/view/body.jsp" flush="false"/>

		<!--Footer -->

			<jsp:include page="/WEB-INF/view/footer.jsp" flush="false"/>
	
	</table>
</body>
</html>



<%--     > --%>