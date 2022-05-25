<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<style>

</style>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>레이아웃</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css"/>

</head>
<body>
  <h3>관리자페이지입니다람쥐.</h3>
  <h4>회원관련</h4><br>
  
  <a href="adminSearch.jsp" class="btn btn-primary btn-user btn-block">회원정보검색</a><br>
  <a href="${pageContext.servletContext.contextPath }/userList.do" class="btn btn-primary btn-user btn-block">회원목록</a><br>
  
  <br>
  <h4>상품관련</h4><br>
  <a href="productAdd.jsp" class="btn btn-primary btn-user btn-block">상품추가</a><br>
  <a href="adminProductSearch.jsp" class="btn btn-primary btn-user btn-block">상품단건검색</a><br>
  <a href="adminProductInfoMod.jsp" class="btn btn-primary btn-user btn-block">상품정보수정</a><br>
  <a href="${pageContext.servletContext.contextPath }/listProduct.do" class="btn btn-primary btn-user btn-block">상품리스트</a><br>
  
  <h4>게시판관련</h4><br>
  <a href="adminForBoard.jsp" class="btn btn-primary btn-user btn-block">게시글관련메뉴</a><br>
  
 
  <a href="${pageContext.servletContext.contextPath }/index.jsp" class="btn btn-primary btn-user btn-block">첫페이지</a>
</body>
</html>