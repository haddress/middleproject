<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dobby marCat</title>
<style>
#container {
	width='1000px';
}
</style>
</head>
<body>

<%

	String center = request.getParameter("center");
	if(center == null) {
		center = "center.jsp";
	}

%>


	<div id="container">
		
		<!-- Header -->
		<div id="head">
			<jsp:include page="header.jsp"/>
		</div>
		<!-- Center -->
		
		<div id="center">
			<jsp:include page="<%=center %>"/>
		</div>
		
		<!-- Footer -->
		<div id="foot">
			<jsp:include page="footer.jsp"/>
		</div>
		
	</div>
	
</body>
</html>