<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>물건검색</title>

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
	@import url('https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css');

* { 
font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui, Roboto, 'Helvetica Neue', 'Segoe UI', 'Apple SD Gothic Neo', 'Noto Sans KR', 'Malgun Gothic', sans-serif;
}
	</style>
</head>






<body>
	
	<div class="container-fluid">



<!-- <h3>상품검색</h3>
	<br>
	<h4>상품코드로검색...</h4>
	<form action="../productSearch.do" method="get">
		<input type="text" name="productCode" id=""><br> <input
			type="hidden" name="job" value="search"> <input type="submit"
			value="조회">
	</form>-->


 <!-- Page Heading -->
                    <h1 class="h3 mb-1 text-gray-800">상품정ㅂ ㅗ관련</h1>
                    
                    <br>
                    <h3>${error }</h3>
                    <p class="mb-4">상품코드로검색...</p>
	<nav
		class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
		<form action="../productSearch.do" method="get"
			class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
			<div class="input-group">
			
				<input type="text" name = "productCode" class="form-control bg-light border-0 small"
					placeholder="Search for..." aria-label="Search"
					aria-describedby="basic-addon2">
					<input type="hidden" name="job" value="search"> 
					<input
				type="submit" value="조회">
				<div class="input-group-append">
				
					
					
				</div>
				
			</div>
		</form>
</nav>


                      

</div>


	<a href="${pageContext.servletContext.contextPath }/index.jsp" class="btn btn-primary btn-user btn-block">첫페이지</a><br>
	<br>
	<a href="${pageContext.servletContext.contextPath }/view/admin.jsp"  class="btn btn-primary btn-user btn-block">관리자페이지로</a>
	<br>
</body>
</html>