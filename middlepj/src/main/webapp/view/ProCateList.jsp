<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="middle.vo.ProductVO" %>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>
<div id="container">
<!-- Header -->
		<div id="head">
			<jsp:include page="header.jsp"/>
		</div>
		<br>
		<br>
		
	<c:choose>
		<c:when test="${empty list }"><h4>상품정보가 없습니다.</h4></c:when>
		<c:otherwise>
				<c:set var="i" value="0"/>
				<c:set var="j" value="4"/>
				<table width="900">
				<c:forEach items="${list }" var="product">
					<c:if test="${i%j==0 }">
					<tr>
					</c:if>
						<td align="center"><a href="productDetail.do?product_code=${product.productCode}" style="text-decoration:none; color:black">
								${product.productImg }<br>
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
	<br>
	<br>

	<!-- Footer -->
		<div id="foot">
			<jsp:include page="footer.jsp"/>
		</div>
		
	</div>

</body>
</html>