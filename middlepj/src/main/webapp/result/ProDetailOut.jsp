<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
.pweight {
	font-weight: 700;
}
input[type="radio"] {
	display:none;
}
input[type="radio"] + label {
	display:inline-block;
	padding:0 221px;
	background:#ddd;
	cursor:pointer;
}
input[type="radio"] + label:hover {
	font-weight: 700;
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
#buybtn {
	width:500px;
	border:none;
	padding:10px;
	background:#fff;
	border: 1px solid black;
}
#buybtn:hover {
	font-weight: 700;
}
#review-data {
	width: 996px;
	border-collapse: collapse;
	margin-top: 10px;
	margin-bottom: 10px;
}
#tableth {
	border-top:	1px solid black;
	border-bottom: 1px solid black;
}
#tableth th {
	text-align:center;
	background: black;
	color: white;
}
#review-data tr th {
	text-align:center;
}
#review-data tr td {
	text-align:center;
}
.reviewTr {
	height: 50px;
}
.star {
	color: #eddd31;
}
.viewAll {
	text-align: right;
}
.viewAll button {
	border: 1px solid black;
	margin-right: 4px;
}
.viewAll button:hover {
	background: #ddd;
}
.viewMore:hover {
	color: #ddd;
}
</style>
</head>
<body>
<!-- Header -->
		<div id="head">
			<jsp:include page="/WEB-INF/view/nav.jsp" flush="false"/>
		</div>
		<br>
		<br>
		
		<jsp:include page="/WEB-INF/view/banner.jsp" flush="false"/>
  
  <c:set var="listMore" value="5"/>
  <c:set var="totalSet" value="7"/>
		
	<div id="container">
		<table width="1000">
			<tr>
				<td rowspan="6" width="493"><img src="upload/${product.productImg }" width="400">
				<td colspan="3" class="pweight">${product.productName }</td>
			</tr>
			<tr>
				<td colspan="3"><span class="pweight">판매가</span>  ${product.productPrice }원</td>
			</tr>
			<tr>
				<td colspan="3">수량을 선택해주세요.<br>최소주문수량 1개 이상입니다.</td>
			</tr>
			<tr>
				<td>${product.productName }</td>
				<td><input type="number" name="pamount" id="pamount" value="1" min="1" max="10" style="width:40px;" onchange="change();">
				<td align="left"><span id="totalprice"></span>원</td>
			</tr>
			<tr>
				<td class="pweight">TOTAL PRICE</td>
				<td colspan="2" width="120px"><span id="totalprice2"></span>원 (<span id="totalcount"></span>개)</td>
			</tr>
			<tr>
				<td colspan="3">
					<form action="buy.do" method="post" onsubmit="return idCheck();">
						<input type="hidden" name="paypcode" value="${product.productCode }">
						<input type="hidden" name="paypname" value="${product.productName }">
						<input type="hidden" name="paycount">
						<input type="hidden" name="allpay">
						<input type="hidden" name="productamount" value="${product.productAmount }">
						<input type="submit" value="구매하기" id="buybtn">
					</form>
				</td>
			</tr>
		
		</table>
				<input type="radio" id="tab1" name="tabmenu" checked>
				<label for="tab1">DETAIL</label>
				<input type="radio" id="tab2" name="tabmenu">
				<label for="tab2">REVIEW</label>
			
			<div>
			</div>			
			<div class="conbox con1">${product.productExp }</div>
			<div class="conbox con2">
				<table id="review-data">
					<tr id="tableth">
						<th></th>
						<th></th>
						<th>상품명</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
					<c:forEach items="${review }" var="review">
					<c:set var="i" value="${i+1 }"/>
					<tr class="reviewTr">
						<td>${i }</td>
						<td>
							<c:choose>
								<c:when test="${review.reviewStar == 5}">
									<span class="star">★★★★★</span>
								</c:when>
								<c:when test="${review.reviewStar == 4}">
									<span class="star">★★★★☆</span>
								</c:when>
								<c:when test="${review.reviewStar == 3}">
									<span class="star">★★★☆☆</span>
								</c:when>
								<c:when test="${review.reviewStar == 2}">
									<span class="star">★★☆☆☆</span>
								</c:when>
								<c:when test="${review.reviewStar == 1}">
									<span class="star">★☆☆☆☆</span>
								</c:when>
							</c:choose>
						</td>
						<td width="150">${review.productName }</td>
						<td width="400" style="text-align:left;"><a href="${pageContext.request.contextPath}/reviewDetail.do?code=${review.reviewCode }" style="text-decoration: none; color:black;">${review.reviewTitle }</a></td>
						<td width="80">${review.id }</td>
						<td>${review.reviewDate }</td>
					</tr>
					</c:forEach>
				</table>
				
				<div class="viewBtn" style="text-align:center;">
					<button type="button" style="border:none; background:none;" id="viewAdd" onclick="listMore();"><span class="viewMore">▼</span></button>
				</div>
				
				<div class="viewAll">
					<button type="button" onclick="location.href='${pageContext.request.contextPath}/review.do'">LIST</button>
				</div>
			</div>
			 

   </div>
   


   <!-- Footer -->
      <div id="foot">
         <jsp:include page="/WEB-INF/view/footer.jsp" flush="false"/>
      </div>
</body>

<script>

document.addEventListener("DOMContentLoaded", change);
      let count, price;
      

	// 수량버튼
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
      
   
    // 로그인 확인
  	function idCheck() {
		if('${Uid }' == '') {
			alert('로그인이 필요합니다.');
			return false;
			history.back();
		} else {
			return true;
		}
	}   
  	
  	// 더보기
  	const firstCount = 3;
  	const moreCount = 5;
  	let showCount = firstCount;
  	
  	let reviews = document.getElementsByClassName('reviewTr');
  	let moreBtn = document.getElementById('viewAdd');
  	
  	if(reviews.length < 5) {
  		moreBtn.style.display = 'none';
  	} else {
  		for (let i = firstCount; i<reviews.length; i++) {
  			reviews[i].style.display = 'none';
  		}
  	}
  	
  	function listMore() {
  		for(let i = showCount; i<showCount+moreCount; i++) {
  			if (reviews[i] != null) {
  				reviews[i].style.display = '';
  			} else {
  				moreBtn.style.display = 'none';
  			}
  		}
  		showCount += moreCount;
  	}
  	

</script>
</html>