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
   margin: 0 auto;
}
h3 {
	color: gray;
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
      <!-- 배너 -->
      <img src="home/banner.jpg" width="1000">
      
      <!-- 최신상품 리스트 -->
      <div id="newlist">
      <hr>
      <h3 style="text-align:center;">신상품</h3>
      <hr>
      <c:choose>
      <c:when test="${empty list }"><h4>상품정보가 없습니다.</h4></c:when>
      <c:otherwise>
            <c:set var="i" value="0"/>
            <c:set var="j" value="3"/>
            <section class="py-5">
            <table width="1000">
            <c:forEach items="${list }" var="product">
               <c:if test="${i%j==0 }">
               <tr>
               </c:if>
                  <td style="text-align:center; padding:5px; width:300px;">
									<div class="container px-4 px-lg-5 my-5">
									<div class="row gx-4 gx-lg-5 align-items-center">
                  	<a href="productDetail.do?productCode=${product.productCode}" style="text-decoration:none; color:black">
                  
				<!--상품이미지  -->
										<div class="col-md-6">
                      <img class="card-img-top mb-5 mb-md-0" src="upload/${product.productImg }" width="170"><br>
                    </div>
										<div class="col-md-6">
                       <h1 class="display-5 fw-bolder"> ${product.productName }</h1><br>
                    	<div class="fs-5 mb-5">
                    	<span class="text-decoration-line-through">${product.productPrice }</span><span>원</span><br>
                    	</div>
                  	</div>
                  	</a>
                  </td>
               <c:if test="${i%j==j-1 }"   >
               </tr>   
               </c:if>
               <c:set var="i" value="${i+1 }"/>
            </c:forEach>
            </table>
   					</section>
      </c:otherwise>
   		</c:choose>
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