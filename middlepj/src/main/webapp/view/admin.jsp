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
<body >



 <main class="flex-shrink-0">
<jsp:include page="/WEB-INF/view/nav.jsp" flush="false" />
              <!-- Header-->
	<header class="bg-white py-5">
		<div class="container px-4 px-lg-5 my-5">
			<div class="text-center text-black">
				<h1 class="display-4 fw-bolder">관리자페이지</h1>
				<p class="lead fw-normal text-black-50 mb-0">여러 정보 관리 하기</p>
			</div>
		</div>
	</header>
 <section class="py-5 bg-light" id="scroll-target">
                <div class="container px-5 my-5">
                    <div class="row gx-5 align-items-center">
                        <div class="col-lg-6">
						<h2 class="fw-bolder">회원정보관련</h2>
                            <a class="lead fw-normal text-muted mb-0" href="${pageContext.servletContext.contextPath }/userList.do" >회원목록</a><br>
                            <a class="lead fw-normal text-muted mb-0"  href="adminSearch.jsp" >회원정보검색</a><br>
                             
                        </div>
                        
                        <div class="col-lg-6">
						<h2 class="fw-bolder">상품관련</h2>
                            <a class="lead fw-normal text-muted mb-0" href="productAdd.jsp" >상품추가</a><br>
                            <a class="lead fw-normal text-muted mb-0" href="adminProductSearch.jsp" >상품단건검색</a><br>
                            <a class="lead fw-normal text-muted mb-0" href="adminProductInfoMod.jsp" >상품정보수정</a><br>
                            <a class="lead fw-normal text-muted mb-0" href="adminProductDel.jsp" >상품삭제</a><br>
                            <a class="lead fw-normal text-muted mb-0" href="${pageContext.servletContext.contextPath }/listProduct.do" >상품리스트</a><br>
                        </div>
                        
                        <div class="col-lg-6">
						<h2 class="fw-bolder">게시판관련</h2>
                             <a class="lead fw-normal text-muted mb-0" href="adminForBoard.jsp">게시글관련메뉴이동(QnA,리뷰)</a><br>
                        </div>
                    </div>
                </div>
            </section>
 
 
 
 </main>



 
  
  <a href="${pageContext.servletContext.contextPath }/index.jsp" class="btn btn-dark btn-user btn-block">첫페이지</a><br>
  
  <jsp:include page="/WEB-INF/view/footer.jsp" flush="false" />

</body>
</html>