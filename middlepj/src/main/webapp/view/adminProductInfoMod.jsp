<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>도비마켓 로그인</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath }/css/sb-admin-2.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style1.css" />
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css" />


<style>
@import
	url('https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css')
	;

* {
	font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui,
		Roboto, 'Helvetica Neue', 'Segoe UI', 'Apple SD Gothic Neo',
		'Noto Sans KR', 'Malgun Gothic', sans-serif;
}
</style>
</head>
<body>
	
		
	
	


	<div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
		<div class="text-center mb-5">
			<div class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
				<i class="bi bi-envelope"></i>
			</div>
			<h1 class="fw-bolder">상품수정</h1>
			<p class="lead fw-normal text-muted mb-0">상품수정을 위한 입력</p>
		</div>
		<div class="row gx-5 justify-content-center">
			<div class="col-lg-8 col-xl-6">
			<h3>${error }</h3>

	<h3>상품수정조회</h3>
	<form
		action="${pageContext.servletContext.contextPath }/productSearch.do"
		method="get">
		<input type="text" name="productCode" id=""><br> <input
			type="hidden" name="job" value="modify"> <input type="submit"
			value="조회">
			<c:choose> 
		<c:when test="${!empty result }">
			<h3>${result }</h3>
		</c:when>
		<c:otherwise> 
			<h3>상품수정</h3>
			
			
	</form>
			<br>
			<br>
			<br>	
				<form id="contactForm">
					<!-- Name input-->
					<div class="form-floating mb-3">
						<input class="form-control" type="text" name="productCode" id=""
							value="${vo.productCode}" placeholder="상품코드"> 

					</div>
					<!-- Email address input-->
					<div class="form-floating mb-3">
						<input class="form-control" type="text" name="productCate" id=""
							value="${vo.productCate}" placeholder="상품카테고리"> 

					</div>
					<!-- Phone number input-->
					<div class="form-floating mb-3">
						<input class="form-control" type="text" name="productName" id=""
							value="${vo.productName}" placeholder="상품이름"> 

					</div>
					<!-- Message input-->
					<div class="form-floating mb-3">
						<input class="form-control" type="text" name="productPrice" id=""
							value="${vo.productPrice}" placeholder="상품가격">

					</div>

					<div class="form-floating mb-3">
						<input class="form-control" type="text" name="productAmount" id="" value="${vo.productAmount}" placeholder="상품재고"><br> 
						

					</div>
					<div class="form-floating mb-3">
						<input class="form-control" type ="text"name="productExp" id="" value="${vo.productExp}" placeholder="상품설명">

					</div>

                    <input type="submit" value="수정">

				</form>
</c:otherwise>

</c:choose>
			</div>
		</div>
	</div>

<a href="${pageContext.servletContext.contextPath }/index.jsp" class="btn btn-primary btn-user btn-block">첫페이지</a>
	<br>
	<a href="${pageContext.servletContext.contextPath }/view/admin.jsp" class="btn btn-primary btn-user btn-block" >관리자페이지로</a>
	<br>





</body>
</html>