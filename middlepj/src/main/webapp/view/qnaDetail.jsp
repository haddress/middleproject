<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
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
<script>
	function deleteQna(no) {
		var confirmed = confirm("삭제하시겠습니까?");
		if(confirmed) {
			location.href = "qnaDelete.do?qnaNo="+no;

		}
	}
	
</script>
<style>
@import url('https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css');

* { 
font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui, Roboto, 'Helvetica Neue', 'Segoe UI', 'Apple SD Gothic Neo', 'Noto Sans KR', 'Malgun Gothic', sans-serif;
}
	input {
		margin-bottom:10px;
	}
	.show {
		text-align:center;
		margin-top:30px;
		margin-bottom:20px;
	}
	.detail {
		border-collapse:collapse;
		width:500px;
		margin:auto;
		text-align:center;
	}
	.trdetail {
		border-bottom:1px solid gray;
	}
	.td {
		display:inline-block;
		width:200px;
		padding-bottom:10px;
		font-weight:bold;
	}
	#trno {
		background-color:black;
	}
	#notd {
		color:white;
	}
	a:link {
		text-decoration:none;
	}
	#login {
		display:block;
		margin:auto;
		margin-top:30px;
		margin-bottom:30px;
	}
	#del {
		display:block;
		margin:auto;
		margin-bottom:10px;
	}
	#back {
		display:block;
		margin:auto;
		margin-bottom:10px;
	}
	#backa {
		text-decoration:none;
	}
	#home {
		display:block;
		margin:auto;
		margin-top:30px;
		margin-bottom:30px;
	}
	#back:hover {
		font-weight: 700;
	}
	#home:hover {
		font-weight:700;
	}
</style>

<title>qnaDetail.jsp</title>
</head>
<body>
<jsp:include page="/WEB-INF/view/nav.jsp" flush="false"/>
<div id="container">
<c:choose>
	<c:when test="${empty Uid }"><h3 class="show">로그인 후 이용가능합니다.</h3>
				<a href="view/login.jsp"><input type="submit" value="로그인" id="login"></a>
	</c:when>
	<c:when test="${qnadetail.id != Uid } & ${Uid != 'admin' }">
		<h3 class="show">작성자만 볼 수 있습니다.</h3>
	</c:when>
	<c:when test="${qnadetail.id == Uid }">
		<h3 class="show">문의글 상세보기</h3>
		
		<div>
		<form>
		<table class="detail">
			<tr class="trdetail" id="trno">
				<td class="td" id="notd">문의글 번호</td>
				<td id="notd">${qnadetail.qnaNo }</td>
			</tr>
			<tr class="trdetail">
				<td class="td">아이디</td>
				<td>${qnadetail.id }</td>
			</tr>
			<tr class="trdetail">
				<td class="td">제목</td>
				<td>${qnadetail.qnaTitle }</td>
			<tr class="trdetail">
				<td class="td">내용</td>
				<td>${qnadetail.qnaContent }</td>
			</tr>
			<tr class="trdetail">
				<td class="td">작성일</td>
				<td>${qnadetail.qnaDate }</td>
			</tr>
		</table>
		</form>
		</div>
		<div style="text-align:center; margin-top:20px; margin-bottom:20px;">
			<button type="button" onclick="deleteQna('${qnadetail.qnaNo }');">문의글 삭제</button>
			<a href="${pageContext.servletContext.contextPath }/detail.do?job=update&qnaNo=${qnadetail.qnaNo }&id=${Uid }">
				<input type="submit" value="수정">
			</a>
		</div>
	</c:when>
	<c:when test="${Uid == 'admin' }">
		<h3 class="show">문의글 상세보기</h3>
		
	<div>
		<form>
		<table class="detail">
			<tr class="trdetail" id="trno">
				<td class="td" id="notd">문의글 번호</td>
				<td id="notd">${qnadetail.qnaNo }</td>
			</tr>
			<tr class="trdetail">
				<td class="td">아이디</td>
				<td>${qnadetail.id }</td>
			</tr>
			<tr class="trdetail">
				<td class="td">제목</td>
				<td>${qnadetail.qnaTitle }</td>
			<tr class="trdetail">
				<td class="td">내용</td>
				<td>${qnadetail.qnaContent }</td>
			</tr>
			<tr class="trdetail">
				<td class="td">작성일</td>
				<td>${qnadetail.qnaDate }</td>
			</tr>
		</table>
		</form>
		</div>
		</div>
			<button type="button" onclick="deleteQna('${qnadetail.qnaNo }');" id="del">문의글 삭제</button>
	</c:when>
	<c:otherwise>
		<h3 class="show">작성자만 볼 수 있습니다.</h3>
		<a href="${pageContext.servletContext.contextPath }/qna.do?id=${Uid }" id="backa">
		<input type="submit" value="고객센터 게시판" id="back">
		</a>
		<form action="${pageContext.servletContext.contextPath }/index.jsp">
	<input type="submit" value="홈" id="home">
	</form>
	</c:otherwise>
</c:choose>	
</div>
<jsp:include page="/WEB-INF/view/footer.jsp" flush="false"/> 
</body>
</html>