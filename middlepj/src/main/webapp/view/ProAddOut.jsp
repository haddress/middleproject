<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<div id="container">
<!-- Header -->
		<div id="head">
			<jsp:include page="header.jsp"/>
		</div>
		<br>
		<br>
		
		<h4>${category } 카테고리에 상품 '${name }'이 등록되었습니다.</h4>
		
<!-- Footer -->
		<div id="foot">
			<jsp:include page="footer.jsp"/>
		</div>
		
	</div>
</body>
</html>