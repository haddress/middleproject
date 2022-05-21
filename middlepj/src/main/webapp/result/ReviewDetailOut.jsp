<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
#container {
   width: 1000px;
   margin: 0 auto;
}
.label {
	width: 70px;
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
	<form action="reviewMoDe.do" method="post">
		<input type="hidden" name="rcode" value="${review.reviewCode }">
		<hr>
		<a href="${pageContext.request.contextPath}/productName.do?productName=${review.productName }" style="text-decoration: none; color:black;">${review.productName }</a>
		<hr>
		<table width="1000">
			<tr>
				<td class="label">제목</td>
				<td>${review.reviewTitle }</td>
			</tr>
			<tr>
				<td class="label">작성자</td>
				<td>${review.id }</td>
			</tr>
			<tr>
				<td class="label">DATE</td>
				<td>${review.reviewDate }</td>
			</tr>
			<tr>
				<td class="label">별점</td>
				<td>
					<c:choose>
						<c:when test="${review.reviewStar == 5}">
							★★★★★
						</c:when>
						<c:when test="${review.reviewStar == 4}">
							★★★★☆
						</c:when>
						<c:when test="${review.reviewStar == 3}">
							★★★☆☆
						</c:when>
						<c:when test="${review.reviewStar == 2}">
							★★☆☆☆
						</c:when>
						<c:when test="${review.reviewStar == 1}">
							★☆☆☆☆
						</c:when>
					</c:choose>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="padding:50px 50px 50px 0;">${review.reviewContent }
				</td>
			</tr>
			<tr>
				<td class="label">비밀번호</td>
				<td>
					<input type="password" name="pass" size="20" id="pass" required> ! 수정·삭제하려면 비밀번호를 입력하세요
				</td>
			</tr>
			<tr>
				
				<td colspan="2" align="right">
					<input type="submit" value="수정" name="modify" onclick="return passCheck();">
					<input type="submit" value="삭제" name="delete" onclick="return passCheck();">
				</td>
			<tr>
		</table>
		</form>
		<hr>
		<input type="button" value="목록" id="list" onclick="history.back(-1)">
		
	</div>



	<!-- Footer -->
	<div id="foot">
		<jsp:include page="/view/footer.jsp"/>
   </div>
</body>
<script>
	
	function passCheck() {
		
		if(document.getElementById("pass").value == "") {
			alert('비밀번호를 입력해주세요.');
			return false;
			history.back();
		} else if (document.getElementById("pass").value != '${review.reviewPass }') {
			alert('비밀번호가 일치하지 않습니다.');
			return false;
			history.back();
		} else {
			return true;
		}
	}

</script>
</html>