<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="middle.vo.ProductVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품정보리스트</title>
</head>
<body>
	<h3>상품정보리스트</h3>
				<form action="${pageContext.servletContext.contextPath }/productDel.do" method="post">
	<c:choose>
		<c:when test="${empty list}">
			<h3>유저정보없음</h3>
		</c:when>
		<c:otherwise>
			<table border="1">
					<caption>상품목록(오름차순)</caption>
				<thead>
					<tr>
						<th>상품코드</th>
						<th>상품카테고리</th>
						<th>상품이름</th>
						<th>상품가격</th>
						<th>상품주문양</th>
						<th>상품설명</th>
						<th>상품이미지</th>
						<th>상품주문날짜</th>
						<th>삭제</th>
					</tr>
				</thead>
					<form action="AllproductDel.do" method="post">
				<tbody>
					<c:forEach items="${list}" var="product">
						<tr>
							<form action="productDel.do" method="post">
							<td>${product.productCode}</td>
							<td>${product.productCate}</td>
							<td>${product.productName}</td>
							<td>${product.productPrice}</td>
							<td>${product.productAmount}</td>
							<td>${product.productExp}</td>
							<td><c:if test="${!empty product.productImg}">
									<img width="70px"
										src="${pageContext.servletContext.contextPath }/upload/${product.productImg}">
								</c:if></td>
							<td>${product.productDate}</td>
							<td>
							<input type="submit" value="한건삭제"></td>
								<input type="hidden" name=productCode value=${product.productCode }>
							</form>
						</tr>

					</c:forEach>
					<tr>
						<td><input type="submit" name="delAll" value="전체삭제"></td>
					</tr>
				</tbody>
					</form>
			</table>
		</c:otherwise>
	</c:choose>
				</form>
	<a href="${pageContext.servletContext.contextPath }/index.jsp">첫페이지</a>
</body>
</body>
</html>