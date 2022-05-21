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
         <jsp:include page="view/header.jsp"/>
      </div>
      <br>
      <br>
      
      
   <div id="container">
      <!-- 배너 -->
      <img src="home/banner.jpeg" width="1000">
      
      <!-- 최신상품 리스트 -->
      <div id="newlist">
      <h3 style="text-align:center;">신상품</h3>
      <hr>
      <c:choose>
      <c:when test="${empty list }"><h4>상품정보가 없습니다.</h4></c:when>
      <c:otherwise>
            <c:set var="i" value="0"/>
            <c:set var="j" value="3"/>
            <table width="1000">
            <c:forEach items="${list }" var="product">
               <c:if test="${i%j==0 }">
               <tr>
               </c:if>
                  <td align="center"><a href="productDetail.do?productCode=${product.productCode}" style="text-decoration:none; color:black">
                        <img src="upload/${product.productImg }" width="170"><br>
                        ${product.productName }<br>
                        ${product.productPrice }원<br>
                  </a></td>
               <c:if test="${i%j==j-1 }"   >
               </tr>   
               </c:if>
               <c:set var="i" value="${i+1 }"/>
            </c:forEach>
            </table>
      </c:otherwise>
   </c:choose>
   </div>
   
   <br>
   <br>
      
   </div>
      <!-- Footer -->
      <div id="foot">
         <jsp:include page="view/footer.jsp"/>
      </div>
      
   
</body>

</html>