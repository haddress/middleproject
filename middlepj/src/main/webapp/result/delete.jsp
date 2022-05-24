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
</head>
<body>
<jsp:include page="/WEB-INF/view/nav.jsp" flush="false"/>
<form action="${pageContext.servletContext.contextPath }/delete.do" method="get">
        
        <h3 style=" text-align: center; margin-top:300px; margin-bottom:300px">탈퇴하시겠습니까?</h3>
        
        
        <div style=" text-align: left;">
        <input type="submit" value="탈퇴"class="btn btn-primary btn-user btn-block" style=" display: inline-block; position: absolute; top:500px; left:700px;">
    	</div>
    </form>
    <div style=" text-align: right;">
						<button onclick="history.back()" class="btn btn-primary btn-user btn-block" style=" display: inline-block; position: absolute; top:500px; left:1050px;">취소하기</button>
						</div>
    
    <jsp:include page="/WEB-INF/view/footer.jsp" flush="false"/>
</body>
</html>