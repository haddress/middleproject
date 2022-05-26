<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Doggy marCat :: 반려동물의 모든 것</title>

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

<style>
	@import url('https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css');

* { 
font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui, Roboto, 'Helvetica Neue', 'Segoe UI', 'Apple SD Gothic Neo', 'Noto Sans KR', 'Malgun Gothic', sans-serif;
}
	</style>


</head>
<body>

	
	
	
	<h1 class="h3 mb-1 text-gray-800">물품정보 관련</h1>

	<br>

	<p class="mb-4">수정결과페이지</p>




	<div class="row">

		<div class="col-lg-6">



			<!-- Basic Card Example -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">
						<c:if test="${!empty result }">
							<h4>${result }</h4>
						</c:if>
						결과창
					</h6>
				</div>
				
					<%-- markservice에 있는 유저 불러오기 기능에서, 아이디 표현이 없어서 없앰. ${vo.uid},${vo.upwd}--%>
					<div class="card-body">  수정완료...확인</div>
				
			</div>

		</div>




	</div>
	
	
	<a href="${pageContext.servletContext.contextPath }/index.jsp" class="btn btn-primary btn-user btn-block">첫페이지</a><br>
	<br>
	<a href="${pageContext.servletContext.contextPath }/view/admin.jsp"  class="btn btn-primary btn-user btn-block">관리자페이지로</a>
	<br>
	
	
	
	
	
</body>
</html>