<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
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
		<table border="1" width="1000">
			<tr>
				<td rowspan="6" width="450"><img src="upload/${product.productImg }" width="400">
				<td colspan="3">${product.productName }</td>
			</tr>
			<tr>
				<td colspan="3">판매가  ${product.productPrice }원</td>
			</tr>
			<tr>
				<td colspan="3">수량을 선택해주세요.<br>최소주문수량 1개 이상입니다.</td>
			</tr>
			<tr>
				<td>${product.productName }</td>
				<td><input type="number" name="pamount" value="1" style="width:40px;"></td>
				<td>(수량계산한가격)</td>
			</tr>
			<tr>
				<td>TOTAL PRICE</td>
				<td colspan="2">(수량계산한가격)(수량)</td>
			</tr>
			<tr>
				<td colspan="3"><input type="button" value="구매하기"></td>
			</tr>
			<tr>
				<td>DETAIL</td>
				<td colspan="3">REVIEW</td>
			</tr>
		</table>


	</div>
	

	<!-- Footer -->
		<div id="foot">
			<jsp:include page="/view/footer.jsp"/>
		</div>
</body>

<script>
	document.querySelector('input[name=pamount]').onchange = calPrice
	
	function calPrice() {
		
		
	}
	

</script>
</html>