
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="middle.vo.ProductVO"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>유저정보</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="${pageContext.request.contextPath }/css/sb-admin-2.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style1.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css" />

</head>
<body>
	<div class="container-fluid">

		<!-- Page Heading -->
		<h1 class="h3 mb-2 text-gray-800">회원정보관련</h1>


		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">유저리스트페이지</h6>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<form
							action="${pageContext.servletContext.contextPath }/productDel.do"
							method="post">
							<c:choose>
								<c:when test="${empty list}">
									<h3>유저정보없음</h3>
								</c:when>
								<c:otherwise>
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
									<tfoot>
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
									</tfoot>
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
													<td><input type="submit" value="한건삭제"></td> <input
														type="hidden" name=productCode
														value=${product.productCode }>
												</form>
											</tr>

										</c:forEach>

									</tbody>
					</table>
					</c:otherwise>
					</c:choose>



				</div>
			</div>
		</div>

	</div>
	<!-- /.container-fluid -->



	<a href="${pageContext.servletContext.contextPath }/index.jsp"
		class="btn btn-primary btn-user btn-block">첫페이지</a>
	<br>
	<a href="${pageContext.servletContext.contextPath }/view/admin.jsp"
		class="btn btn-primary btn-user btn-block">관리자페이지로</a>
	<br>
</body>
</body>
</html>