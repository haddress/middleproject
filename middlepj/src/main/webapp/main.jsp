<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dobby marCat</title>
<style>
#container {
   width: 1000px;
   margin: 0px auto;
}
h3 {
	color: gray;
}
#banner {
	text-align: center
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
      
      
      <!-- 배너 -->
      <div id="banner">
      	<img src="home/banner.jpg" width="1200">
      </div>
    
    	<div id="container">
     	<c:choose>
      	<c:when test="${empty list }"><h4>상품정보가 없습니다.</h4></c:when>
      <c:otherwise> 
 				<!-- 최신상품 리스트 -->
      	<h3 style="text-align:center;">신상품</h3>
				<section class="py-5">
					<div class="container px-4 px-lg-5 mt-5">
						<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            	<c:forEach items="${list }" var="product">
								<!--4번카드  -->
								<div class="col mb-5">
									<div class="card h-100">
										<a href="productDetail.do?productCode=${product.productCode}" style="text-decoration:none; color:black">
											<!-- Product image-->
											<img class="card-img-top" src="upload/${product.productImg }" width="200"/>
											<!-- Product details-->
											<div class="card-body p-4">
												<div class="text-center">
													<!-- Product name-->
													<h5 class="fw-bolder">${product.productName }</h5>
													<!-- Product price-->
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
   
   <br>
   <br>
   </div>
      <!-- Footer -->
      <div id="foot">
         <jsp:include page="/WEB-INF/view/footer.jsp" flush="false"/>
      </div>
      
   
</body>

</html>