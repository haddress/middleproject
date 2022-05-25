<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
@import url('https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css');

* { 
font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui, Roboto, 'Helvetica Neue', 'Segoe UI', 'Apple SD Gothic Neo', 'Noto Sans KR', 'Malgun Gothic', sans-serif;
}

#container {
	width: 1000px;
	margin: 20px auto;
}
.label {
	width: 90px;
}
#rtitle {
	width: 450px;
}
.trhe {
	height: 40px;
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

	<div id="container">
	<form action="reviewModify.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="rcode" value="${review.reviewCode }">
		<table width="1000">
			<tr class="trhe">
				<td class="label">제목</td>
				<td><input type="text" id="rtitle" name="rtitle" value="${review.reviewTitle }"></td>
			</tr>
			<tr class="trhe">
				<td>주문상품</td>
				<td>${review.productName }</td>
			</tr>
			<tr class="trhe">
				<td>별점</td>
				<td>
					<select name="rstar">
						<option value="5">★★★★★
						<option value="4">★★★★☆
						<option value="3">★★★☆☆
						<option value="2">★★☆☆☆
						<option value="1">★☆☆☆☆
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<textarea name="rcontent" rows="6" cols="130">${review.reviewContent }</textarea><br>
				</td>
			</tr>
			<tr class="trhe">
				<td>첨부이미지</td>
				<td><input type="file" name="rimg"></td>
			</tr>
		</table>
		<hr>
		<input type="submit" value="수정">
		<button type="button" onclick="history.back(-1)">취소</button>
	</form>
	</div>



<!-- Footer -->
		<div id="foot">
			<jsp:include page="/WEB-INF/view/footer.jsp" flush="false"/>
		</div>
</body>
</html>