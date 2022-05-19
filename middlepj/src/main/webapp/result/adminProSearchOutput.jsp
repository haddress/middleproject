<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>조회결과페이지</h3>
	<c:if test="${!empty result }"><h4>${result }</h4></c:if>
    <c:if test="${!empty vo }">
    
    <h4>상품코드: ${vo.productCode}  / 상품카테고리:${vo.productCate}
      / 상품이름: ${vo.productName} / 상품가격: ${vo.productPrice}/ 상품주문갯수: ${vo.productAmount}
      / 상품회사: ${vo.productExp} / 상품이미지: ${vo.productImg}/ 상품주문날짜: ${vo.productDate}
    </h4> 
  </c:if>

</body>
</html>