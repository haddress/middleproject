<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/styles.css" />
<meta charset="UTF-8">

</head>
<body>
<jsp:include page="/WEB-INF/view/nav.jsp" flush="false"/>
    	<!-- Page content-->
	<section class="py-5">
		<div class="container px-5">
			<!-- Contact form-->
			<div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
				<div class="text-center mb-5">

					<h1 class="fw-bolder">상품 구매</h1>
				</div>
				<div class="row gx-5 justify-content-center">
					<div class="col-lg-8 col-xl-6">
						<form action="${pageContext.servletContext.contextPath }/realbuy.do" method="get">
							<!--아이디 입력-->
							<div class="form-floating mb-3">
								<input class="form-control" type="text" name="productname" readonly value=${voo.productName } data-sb-validations="required" /> 
								<label for="Uname">상품명</label>
								<div class="invalid-feedback" data-sb-feedback="phone:required"></div>
							</div>
							<div class="form-floating mb-3">
								<input class="form-control" type="text" name="amount" readonly value=${voo.amount } data-sb-validations="required" /> 
								<label for="Uname">수량</label>
								<div class="invalid-feedback" data-sb-feedback="phone:required"></div>
							</div>
							<div class="form-floating mb-3">
								<input class="form-control" type="text" name="productprice" readonly value=${voo.productPrice } data-sb-validations="required" /> 
								<label for="Uname">상품금액</label>
								<div class="invalid-feedback" data-sb-feedback="phone:required"></div>
							</div>
							<div class="form-floating mb-3">
								<input class="form-control" type="text" name="address" value=${voo.uorderAddress } data-sb-validations="required" /> 
								<label for="Uname">주소</label>
								<div class="invalid-feedback" data-sb-feedback="phone:required">주소를 확인하세요</div>
							</div>
							<div class="form-floating mb-3">
								<input class="form-control" type="text" name="uordername" value=${voo.uorderName } data-sb-validations="required" /> 
								<label for="Uname">구매자</label>
								<div class="invalid-feedback" data-sb-feedback="phone:required"></div>
							</div>
							<div class="form-floating mb-3">
								<input class="form-control" type="text" name="uordertel" value=${voo.uorderTel } data-sb-validations="required" /> 
								<label for="Uname">전화번호</label>
								<div class="invalid-feedback" data-sb-feedback="phone:required">전화번호를 확인하세요</div>
							</div>
							
							        <input type="hidden" name="Uid" value="${voo.uid }">
       							     <input type="hidden" name="paycode" value="${voo.productCode }">
        							<input type="hidden" name="productamount" value="${vo1.productAmount }">							
							<div style=" text-align: left;">
							<input type="submit" value="구매하기" class="btn btn-primary btn-user btn-block" style=" display: inline-block;">
							</div>
							
						</form>
						<div style=" text-align: right;">
						<button onclick="history.back()" class="btn btn-primary btn-user btn-block" style=" display: inline-block; position: absolute; top:689px; right:680px;">취소하기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
    
    
    
    
    
       


<jsp:include page="/WEB-INF/view/footer.jsp" flush="false"/>
</body>
</html>