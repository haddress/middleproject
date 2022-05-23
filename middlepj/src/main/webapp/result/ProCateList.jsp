<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="middle.vo.ProductVO" %>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
#container {
	width: 1000px;
	margin: 0 auto;
}
h3 {
	color: gray;
}
.pagination {
	list-style:none;
}
.pagination li {
	display:inline;
}
.pagination li a {
	color: black;
	text-decoration: none;
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
	<c:choose>
		<c:when test="${empty list }"><h4>상품정보가 없습니다.</h4></c:when>
		<c:otherwise>
				<c:set var="i" value="0"/>
				<c:set var="j" value="3"/>
				<h3 style="text-align:center;">${list[0].productCate }</h3>
				<hr>
				<table width="1000">
				<c:forEach items="${list }" var="product">
					<c:if test="${i%j==0 }">
					<tr>
					</c:if>
						<td align="center"><a href="productDetail.do?productCode=${product.productCode}&productName=${product.productName}" style="text-decoration:none; color:black">
								<img src="upload/${product.productImg }" width="170"><br>
								${product.productName }<br>
								${product.productPrice }원<br>
						</a></td>
					<c:if test="${i%j==j-1 }"	>
					</tr>	
					</c:if>
					<c:set var="i" value="${i+1 }"/>
				</c:forEach>
				</table>
		</c:otherwise>
	</c:choose>
	<!-- 페이징 -->
			<table width="1000" id="review-paging">
				<tr>
					<td align="center">
						<ul class="pagination pagination-sm">
							<!-- 이전버튼 -->
							<c:if test="${pageVO.prev }">
								<li><a href="CateList.do?pageNum=${pageVO.startPage - 1 }&amount=${pageVO.amount }&cate=${list[0].productCate }">PREV</a>
							</c:if>
							
							<!-- 페이지 번호 -->
							<c:forEach var="num" begin="${pageVO.startPage }" end="${pageVO.endPage }">
								<li class="${pageVO.pageNum eq num ? 'active' : '' }">&nbsp;
								<a href="CateList.do?pageNum=${num }&amount=${pageVO.amount }&cate=${list[0].productCate }">${num }</a></li>
							</c:forEach>
							
							<!-- 다음버튼 -->
							<c:if test="${pageVO.next }">
								<li><a href="CateList.do?pageNum=${pageVO.endPage - 1 }&amount=${pageVO.amount }&cate=${list[0].productCate }">NEXT</a>
							</c:if>
						</ul>
					</td>
				</tr>
			</table>
	<br>
	<br>
	</div>
	

	<!-- Footer -->
		<div id="foot">
			<jsp:include page="/view/footer.jsp"/>
		</div>
		

</body>
</html>