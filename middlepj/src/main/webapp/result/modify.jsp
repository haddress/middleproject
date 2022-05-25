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
<title>회원수정</title>
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

					<h1 class="fw-bolder">회원정보수정</h1>
				</div>
				<div class="row gx-5 justify-content-center">
					<div class="col-lg-8 col-xl-6">
						<form
							action="${pageContext.servletContext.contextPath }/modify.do"
							method="post">
							<!--아이디 입력 -->
							<div class="form-floating mb-3">
								<input class="form-control" type="text" name="Uid" readonly
									value="${vo.uid }" placeholder="Enter your name..."
									data-sb-validations="required" /> <label for="Uid">ID</label>
								<div class="invalid-feedback" data-sb-feedback="name:required">ID
									를 입력해주세요.</div>
							</div>
							<!--비밀번호 입력-->
							<div class="form-floating mb-3">
								<input class="form-control" type="password" name="Upw"
									value="${vo.upw }" placeholder="(123) 456-7890"
									data-sb-validations="required" /> <label for="Upw">비밀번호</label>
								<div class="invalid-feedback"
									data-sb-feedback="password:required">비밀번호를 입력해주세요.</div>
							</div>
							<!--이름 입력-->
							<div class="form-floating mb-3">
								<input class="form-control" type="text" name="Uname"
									value="${vo.uname }" placeholder="(123) 456-7890"
									data-sb-validations="required" /> <label for="Uname">이름</label>
								<div class="invalid-feedback" data-sb-feedback="phone:required">이름을
									입력해주세요!</div>
							</div>
							<!-- Phone number input-->
							<div class="form-floating mb-3">
								<input class="form-control" type="tel" name="Utel"
									value="${vo.utel }" placeholder="(123) 456-7890"
									data-sb-validations="required" /> <label for="Utel">휴대전화
									번호</label>
								<div class="invalid-feedback" data-sb-feedback="phone:required">휴대폰
									번호를 입력해주세요.</div>
							</div>
							<!--메일 입력-->
							<div class="form-floating mb-3">
								<input class="form-control" type="email" name="Uemail" value="${vo.uemail }"
									placeholder="name@example.com"
									data-sb-validations="required,email" /> <label for="Uemail">이메일</label>
								<div class="invalid-feedback" data-sb-feedback="email:required">이메일을
									입력해주세요.</div>
								<div class="invalid-feedback" data-sb-feedback="email:email">올바른
									이메일을 작성해주세요.</div>
							</div>
							<!--주소입력-->
							<div class="form-floating mb-3">
								<input class="form-control" type="text" name="Uaddress"
									value="${vo.uaddress }"
									placeholder="(123) 456-7890" data-sb-validations="required" /> <label
									for="Uaddress">주소</label>
								<div class="invalid-feedback"
									data-sb-feedback="address:required">주소를 입력해주세요.</div>
							</div>

							<input type="submit" value="수정" class="btn btn-primary btn-user btn-block">
							
				


						</form>
						<form action="${pageContext.servletContext.contextPath }/search.do" method="get">
    
    <input type="hidden" name="job" value="delete">
    <input type="hidden" name="Uid" value="${Uid }">
  <div style=" text-align: right;">
  <input type="submit" value="탈퇴" class="btn btn-primary btn-user btn-block" style=" display: inline-block; position: absolute; top:689px; right:680px;">
</div>
</form>
					</div>
				</div>
			</div>
		</div>
	</section>
<jsp:include page="/WEB-INF/view/footer.jsp" flush="false"/>
</body>
</html>