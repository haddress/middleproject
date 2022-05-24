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
<title>아이디 찾기</title>
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

					<h1 class="fw-bolder">아이디 찾기</h1>
				</div>
				<div class="row gx-5 justify-content-center">
					<div class="col-lg-8 col-xl-6">
						<form
							action="${pageContext.servletContext.contextPath }/pwfind.do"
							method="post">
							<!--아이디 입력-->
							<div class="form-floating mb-3">
								<input class="form-control" type="text" name="id"
									placeholder = "아이디 입력"
									data-sb-validations="required" /> <label for="Uname">이름</label>
								<div class="invalid-feedback" data-sb-feedback="phone:required">이름을
									입력해주세요!</div>
							</div>
														

							<input type="submit" value="비밀번호찾기" class="btn btn-primary btn-user btn-block">
							
							
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
<jsp:include page="/WEB-INF/view/footer.jsp" flush="false"/>
</body>
</html>