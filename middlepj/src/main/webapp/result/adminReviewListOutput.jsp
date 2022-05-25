
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="middle.vo.ReviewVO"%>

<%@ page import="java.util.List"%>
<%@ page import="java.util.List"%>
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

<title>리뷰정보</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="${pageContext.request.contextPath }/css/sb-admin-2.min.css"
	rel="stylesheet">
	
	
	<style>
	@import url('https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css');

* { 
font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui, Roboto, 'Helvetica Neue', 'Segoe UI', 'Apple SD Gothic Neo', 'Noto Sans KR', 'Malgun Gothic', sans-serif;
}
	</style>
	
	
</head>
<body>
	<div class="container-fluid">

		<!-- Page Heading -->
		<h1 class="h3 mb-2 text-gray-800">게시판관련</h1>


		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">리뷰리스트페이지</h6>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<c:choose>
							<c:when test="${empty list}">
								<h3>리뷰없음</h3>
							</c:when>
							<c:otherwise>
								<thead>
									<tr>
										<th>리뷰코드</th>
										<th>물건이름</th>
										<th>글쓴이</th>
										<th>리뷰글비번</th>
										<th>리뷰글제목</th>
										<th>리뷰글내용</th>
										<th>리뷰글날짜</th>
										<th>리뷰글날짜</th>
										<th>리뷰관련</th>
										<th>수정</th>
										<th>삭제</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>리뷰코드</th>
										<th>물건이름</th>
										<th>글쓴이</th>
										<th>리뷰글비번</th>
										<th>리뷰글제목</th>
										<th>리뷰글내용</th>
										<th>리뷰글날짜</th>
										<th>리뷰글날짜</th>
										<th>리뷰관련</th>
										<th>수정</th>
										<th>삭제</th>
									</tr>
								</tfoot>
								<tbody>

									<c:forEach items="${list}" var="review">
										<tr>
											<form action="adminReviewMoDe.do" method="post">
												<td>${review.reviewCode }</td>
												<td>${review.productName }</td>
												<td>${review.id }</td>
												<td>${review.reviewPass }</td>
												<td>${review.reviewTitle }</td>
												<td>${review.reviewContent }</td>
												<td>${review.reviewDate }</td>
												<td>${review.reviewImg }</td>
												<td>${review.reviewStar }</td>
												<td><input type="submit" value="한건삭제"> <input
													type="hidden" name="reviewCode" value=${review.reviewCode }>
												</td>
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


<a href="${pageContext.servletContext.contextPath }/index.jsp" class="btn btn-primary btn-user btn-block">첫페이지</a>
	<br>
	<a href="${pageContext.servletContext.contextPath }/view/admin.jsp" class="btn btn-primary btn-user btn-block" >관리자페이지로</a>
	<br>







	
</body>
</html>