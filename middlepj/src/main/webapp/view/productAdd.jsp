<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>상품추가</title>

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
#container {
	width: 1000px;
	margin: 20px auto;
}
</style>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${pageContext.servletContext.contextPath }/css/styles.css" rel="stylesheet" />
</head>
<body>


	<div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
		<div class="text-center mb-5">
			<div class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
				
			</div>
			<h1 class="fw-bolder">상품추가</h1>
			<p class="lead fw-normal text-muted mb-0">상품추가를 위한 입력</p>
		</div>
		<div class="row gx-5 justify-content-center">
			<div class="col-lg-8 col-xl-6">
			<h3>${error }</h3>

	<h3>상품추가화면</h3>
	
			<br>
			<br>
			<br>	
				<form id="contactForm"
				action="../productAdd.do" method="post"   enctype="multipart/form-data" >
					<!-- Name input-->
					<div class="form-floating mb-3">
					상품카테고리: <select  name="pcate">
					  <option value="간식">간식</option>
					  <option value="장난감">장난감</option>
					  <option value="실내용품">실내용품</option>
					  <option value="목욕/미용">목욕/미용</option>
					</select>
					</div>
					
					
					
					
					<div class="form-floating mb-3">
						상품명: <input class="form-control" type="text" name="pname"
							 placeholder="ex:츄르"> 

					</div>
					<!-- Email address input-->
					<div class="form-floating mb-3">
						상품가격: <input class="form-control" type="text" name="pprice"
							placeholder="ex: 5000"> 

					</div>
					<!-- Phone number input-->
					<div class="form-floating mb-3">
						상품수량: <input class="form-control" type="text" name="pamount"
							placeholder="3"> 

					</div>
					<!-- Message input-->
					<div class="form-floating mb-3">
						상품설명: <textarea class="form-control" type="text" name="pexp" id=""
						placeholder="ex: 우리집고양이가좋아해요"></textarea>

					</div>

					
						상품이미지: <input  type="file" name="pimg" ><br> 
						

					
					
					
                    <input type="submit" value="추가">

				</form>



			</div>
		</div>
	</div>

<a href="${pageContext.servletContext.contextPath }/index.jsp" class="btn btn-primary btn-user btn-block">첫페이지</a>
	<br>
	<a href="${pageContext.servletContext.contextPath }/view/admin.jsp" class="btn btn-primary btn-user btn-block" >관리자페이지로</a>
	<br>




		
</body>
</html>