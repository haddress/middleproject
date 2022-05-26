<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Doggy marCat</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${pageContext.servletContext.contextPath }/css/styles.css" rel="stylesheet" />
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
			<jsp:include page="/WEB-INF/view/nav.jsp"/>
		</div>
		<br>
		<br>
		
		<jsp:include page="/WEB-INF/view/banner.jsp" flush="false"/>
	
	<div id="container">
		<form action="reviewAdd.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="rwriter" value="${Uid }">
		<input type="hidden" name="rcode" value="${review.reviewCode }">
		<table width="1000">
			<tr class="trhe">
				<td class="label">제목</td>
				<td><input type="text" id="rtitle" name="rtitle" required></td>
			</tr>
			<tr class="trhe">
				<td>주문상품</td>
				<td>
					<select name="rproduct">
						<c:forEach items="${list }" var="order">
							<option value="${order.productName }">${order.productName }
						</c:forEach>
					</select>
				</td>
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
					<textarea name="rcontent" rows="6" cols="130" placeholder="리뷰 내용을 작성해주세요." required></textarea><br>
				</td>
			</tr>
			<tr class="trhe">
				<td>첨부이미지</td>
				<td><input type="file" name="rimg"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="rpass" maxlength="4" placeholder="4자리 숫자를 입력해주세요." required></td>
			</tr>
		</table>
		<hr>
		<input type="submit" value="등록">
		<button type="button" onclick="location.href='${pageContext.request.contextPath}/review.do'">취소</button>
	</form>
	</div>

<!-- Footer -->
		<div id="foot">
			<jsp:include page="/WEB-INF/view/footer.jsp"/>
		</div>
</body>
</html>