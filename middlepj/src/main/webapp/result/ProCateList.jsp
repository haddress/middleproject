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
	margin: 0px auto;
}
h3 {
	color: gray;
}
.page {
	list-style:none;
}
.page li {
	display:inline;
	
}
.page li a {
	color: black;
	text-decoration: none;
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
	<c:choose>
		<c:when test="${empty list }"><h4>상품정보가 없습니다.</h4></c:when>
		<c:otherwise>
			<h3 style="text-align:center;">${list[0].productCate }</h3>
				<section class="py-5">
					<div class="container px-4 px-lg-5 mt-5">
						<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
							<c:forEach items="${list }" var="product">
								<div class="col mb-5">
									<div class="card h-100">					
										<a href="productDetail.do?productCode=${product.productCode}&productName=${product.productName}" style="text-decoration:none; color:black">
											<img class="card-img-top" src="upload/${product.productImg }">
												<div class="card-body p-4">
													<div class="text-center">
													<h5 class="fw-bolder">${product.productName }</h5>
													${product.productPrice }원
												</div>
											</div>
										</a>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</section>													
			</c:otherwise>
		</c:choose>
		
		
	<!-- 페이징 -->
			<table width="1000">
				<tr>
					<td align="center">
						<ul class="page pagination-sm">
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
			<jsp:include page="/WEB-INF/view/footer.jsp" flush="false"/>
		</div>
		

</body>
</html>