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
	width: 1200px;
	margin: 0px auto;
}
.cateimg {
	text-align: center;
}
.cateimg span img {
	width: 70px;
}
#paging {
	text-align:center;
}
.page {
	list-style:none;
	padding: 0;
}
.page li {
	display:inline;
	
}
.page li a {
	color: black;
	text-decoration: none;
}
@import url('https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css');

* { 
font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui, Roboto, 'Helvetica Neue', 'Segoe UI', 'Apple SD Gothic Neo', 'Noto Sans KR', 'Malgun Gothic', sans-serif;
}
.text-center:hover {
	color: #ddd;
}
.rhov:hover {
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
		
<div id="container">
	<c:choose>
		<c:when test="${empty list }">
			<div class="cateimg">
				<h6>상품정보가 없습니다.</h6>
			</div>
		</c:when>
		<c:otherwise>
			<div class="cateimg">
				<c:choose>
					<c:when test="${list[0].productCate eq '간식'}">
						<span><img src="home/dogsnack.png">
						<img src="home/catsnack.png" width="100">
						</span>
					</c:when>
					<c:when test="${list[0].productCate eq '장난감'}">
						<span><img src="home/dogtoy.png">
						<img src="home/cattoy.png" width="100">
						</span>
					</c:when>
					<c:when test="${list[0].productCate eq '실내용품'}">
						<span><img src="home/petbed.png">
						</span>
					</c:when>
					<c:when test="${list[0].productCate eq '목욕/미용'}">
						<span><img src="home/petsoap.png">
						</span>
					</c:when>
				</c:choose>
			</div>
				<section class="py-5" style="padding-top:0px !important; padding-bottom:0px !important;">
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
		<div id="paging">
			<table width="1200">
				<tr>
					<td align="center">
						<ul class="page pagination-sm">
							<!-- 이전버튼 -->
							<c:if test="${pageVO.prev }">
								<li><a href="CateList.do?pageNum=${pageVO.startPage - 1 }&amount=${pageVO.amount }&cate=${list[0].productCate }"><span class="rhov">PREV</span></a>
							</c:if>
							
							<!-- 페이지 번호 -->
							<c:forEach var="num" begin="${pageVO.startPage }" end="${pageVO.endPage }">
								<li class="${pageVO.pageNum eq num ? 'active' : '' }">&nbsp;
								<a href="CateList.do?pageNum=${num }&amount=${pageVO.amount }&cate=${list[0].productCate }"><span class="rhov">${num }</span></a></li>
							</c:forEach>
							
							<!-- 다음버튼 -->
							<c:if test="${pageVO.next }">
								<li><a href="CateList.do?pageNum=${pageVO.endPage - 1 }&amount=${pageVO.amount }&cate=${list[0].productCate }"><span class="rhov">NEXT</span></a>
							</c:if>
						</ul>
					</td>
				</tr>
			</table>
		</div>
		
	<br>
	<br>
	</div>
	

	<!-- Footer -->
		<div id="foot">
			<jsp:include page="/WEB-INF/view/footer.jsp" flush="false"/>
		</div>
		

</body>
</html>