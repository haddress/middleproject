
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
<style type="text/css">
	
	#h3 {
		display:block;
		text-align:center;
		margin:20px;
		
	}
	#noqna {
		text-align:center;
	}
	table {
		width:1100px;
		margin:auto;
		text-align:center;
	}
	td {
		width:50px;
		padding:10px;
	}
	a input {
		margin:auto;
	}
	ul {
		list-style:none;
	}
	li {
		list-style:none;
		display:inline;
	}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/view/nav.jsp" flush="false"/>
		
		<c:if test="${!empty delete }">
			<script>
			alert(${delete });
			</script>
			<%request.getSession().removeAttribute("delete"); %>
		</c:if>
 <c:choose> 
	<c:when test="${empty list }"><h3 id="noqna">문의글 정보가 없습니다</h3>
	<a href="view/qnaWrite.jsp?id=${Uid }">글쓰기</a>
	</c:when>
	<c:otherwise>
	<h3 id="h3">고객센터</h3>
	<div id="container">
	<table>
	<thead>
		<tr>
			<th>카테고리</th>
			<th>문의번호</th>
			<th>제목</th>
			<th>날짜</th>
		</tr>
	 </thead>
	 <tbody>
		 <c:forEach var="list" items="${list }" >
			<tr><td>${list.qnaCategory }</td><td>${list.qnaNo }</td><td><a href="detail.do?job=detail&qnaNo=${list.qnaNo }&id=${Uid }">${list.qnaTitle }</a></td><td>${list.qnaDate }</td>
			</tr>
		</c:forEach>
		
	 </tbody>
	</table>
	</div>
	<a href="view/qnaWrite.jsp?id=${Uid }">
		<input type="submit" value="글쓰기">
	</a>
	 </c:otherwise>
	</c:choose>  
	
	<!-- 문의글 페이징 -->
	<table>
		<tr>
			<td>
				<ul>
					<!-- 이전버튼 -->
					<c:if test="${pageVO.prev }">
						<li><a href="qna.do?pageNum=${pageVO.startPage - 1 }&amount=${pageVO.amount }">PREV</a></li>
					</c:if>
					<!-- 페이지 번호 -->
					<c:forEach var="num" begin="${PageVO.startPage +1}" end="${pageVO.endPage }">
						<li class="${pageVO.pageNum eq num ? 'active' : '' }">&nbsp;
						<a href="qna.do?pageNum=${num }&amount=${pageVO.amount }">${num }</a></li>
					</c:forEach>
					<!-- 다음버튼 -->
					<c:if test="${pageVO.next }">
								<li><a href="qna.do?pageNum=${pageVO.endPage - 1 }&amount=${pageVO.amount }">NEXT</a></li>
							</c:if>
				</ul>
			</td>
		</tr>
	</table>

	</div>
	<jsp:include page="/WEB-INF/view/footer.jsp" flush="false"/> 
</body>
</html>