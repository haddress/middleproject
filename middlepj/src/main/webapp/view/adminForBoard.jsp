
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="middle.vo.ReviewVO"%>
<%@ page import="middle.vo.qnaVO"%>
<%@ page import="java.util.List"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>게시판관련...</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath }/css/sb-admin-2.min.css" rel="stylesheet">
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
                    <h1 class="h3 mb-1 text-gray-800">관리자페이지</h1>
                    <p class="mb-4">여러가지 정보들을 관리합니다</p>

                    <!-- Content Row -->
                    <div class="row">

                        <!-- Border Left Utilities -->
                        <div class="col-lg-6">
							<p class="mb-4">회원정보 관련</p>
                            <div class="card mb-4 py-3 border-left-primary">
                                <div class="card-body">
                                  <a href="${pageContext.servletContext.contextPath }/reviewList.do">리뷰글리스트</a>
                                </div>
                            </div>

                            <div class="card mb-4 py-3 border-left-secondary">
                                <div class="card-body">
                                   <a href="${pageContext.servletContext.contextPath }/QnAList.do">QnA글리스트</a>
                                </div>
                            </div>
                            
                            
 								
                        <!-- Border Bottom Utilities -->
                        

                    </div>

                </div>
                <!-- /.container-fluid -->
<a href="${pageContext.servletContext.contextPath }/index.jsp" class="btn btn-primary btn-user btn-block">첫페이지</a>
	<br>
	<a href="${pageContext.servletContext.contextPath }/view/admin.jsp" class="btn btn-primary btn-user btn-block" >관리자페이지로</a>
	<br>



</body>
</html>