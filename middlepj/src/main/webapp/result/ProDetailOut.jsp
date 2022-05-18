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
				<td><input type="number" name="pamount" id="pamount" value="1" style="width:40px;" onchange="change()">
				<!-- <button id="up" onclick="up()">+</button>
				<button id="down" onclick="down()">-</button></td> -->
				<td><span id="totalprice"></span>원</td>
			</tr>
			<tr>
				<td>TOTAL PRICE</td>
				<td colspan="2"><span id="totalprice2"></span>원 (<span id="totalcount"></span>개)</td>
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

document.addEventListener("DOMContentLoaded", change);

	function change() {
		let count = document.getElementById("pamount").value;
		let price = "<c:out value='${product.productPrice }'/>";
		
		price = count * price;
		document.getElementById("totalprice").innerText = price;
		document.getElementById("totalprice2").innerText = price;
		document.getElementById("totalcount").innerText = count;
		
		
	}


/*  	let Price = "<c:out value='${product.productPrice }'/>";
 	document.getElementById("totalprice").innerText = Price;
	 	
 	
	function up() {
		var count = document.getElementById("pamount").value;
		document.getElementById("pamount").value = parseInt(count) + 1; 
		var Price = parseInt(count) * parseInt(Price);
	}
	
	function down() { 
		var count = document.getElementById("pamount").value;
		if (count != 1) { 
			document.getElementById("pamount").value = parseInt(count) - 1; 
		} 
		var Price = parseInt(count) * parseInt(Price);
	}
	
	
	
	function change() {
		var count = document.getElementById("pamount").value;
		if (count < 0) {
			count = 0;
		}
		var Price = parseInt(count) * parseInt(Price);
		
	} */

	

</script>
</html>