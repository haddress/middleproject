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
input[type="radio"] {
	display:none;
}
input[type="radio"] + label {
	display:inline-block;
	padding:0 222px;
	background:#ddd;
	cursor:pointer;
}
.conbox {
	display:none;
}
input[id="tab1"]:checked ~ .con1 {
	display:block;
}
input[id="tab2"]:checked ~ .con2 {
	display:block;
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
				<td><input type="number" name="pamount" id="pamount" value="1" min="1" max="10" style="width:40px;" onchange="change();">
				<td><span id="totalprice"></span>원</td>
			</tr>
			<tr>
				<td>TOTAL PRICE</td>
				<td colspan="2"><span id="totalprice2"></span>원 (<span id="totalcount"></span>개)</td>
			</tr>
			<tr>
				<td colspan="3">
					<form action="buy.do" method="post" onsubmit="return idCheck();">
						<input type="hidden" name="paypcode" value="${product.productCode }">
						<input type="hidden" name="paypname" value="${product.productName }">
						<input type="hidden" name="paycount">
						<input type="hidden" name="allpay">
						<input type="submit" value="구매하기">
					</form>
				</td>
			</tr>
		
		</table>
				<input type="radio" id="tab1" name="tabmenu" checked>
				<label for="tab1">DETAIL</label>
				<input type="radio" id="tab2" name="tabmenu">
				<label for="tab2">REVIEW</label>
						
			<div class="conbox con1">${product.productExp }</div>
			<div class="conbox con2">
				<table width="1000">
					<tr>
						<th>번호</th>
						<th>이미지</th>
						<th>상품명</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
					<c:forEach items="${review }" var="review">
					<tr>
						<td width="40">${review.reviewCode }</td>
						<td width="110"><img src="reviewUpload/${review.reviewImg }" width="100"></td>
						<td width="150">${review.productName }</td>
						<td width="400"><a href="${pageContext.request.contextPath}/reviewDetail.do?code=${review.reviewCode }" style="text-decoration: none; color:black;">${review.reviewTitle }</a></td>
						<td width="80">${review.id }</td>
						<td>${review.reviewDate }</td>
					</tr>
					</c:forEach>
					<tr>
						<td colspan="6"><button type="button" onclick="location.href='${pageContext.request.contextPath}/review.do'">전체보기</button></td>
					</tr>
				</table>
			</div>
			 

   </div>
   


   <!-- Footer -->
      <div id="foot">
         <jsp:include page="/view/footer.jsp"/>
      </div>
</body>

<script>

document.addEventListener("DOMContentLoaded", change);
      let count, price;
      


	function change() {
		count = document.getElementById("pamount").value;
		price = "<c:out value='${product.productPrice }'/>";
		
		if (count == 10) {
			alert('최대 10개까지 구매하실 수 있습니다.');
		}
		
		price = count * price;
		document.getElementById("totalprice").innerText = price;
		document.getElementById("totalprice2").innerText = price;
		document.getElementById("totalcount").innerText = count;

		document.querySelector('input[name=paycount]').value = count;
		document.querySelector('input[name=allpay]').value = price;
		
	}


      document.querySelector('input[name=paycount]').value = count;
      document.querySelector('input[name=allpay]').value = price;
      
    
  	function idCheck() {
		if('${Uid }' == '') {
			alert('로그인이 필요합니다.');
			return false;
			history.back();
		} else {
			return true;
		}
	}   


</script>
</html>