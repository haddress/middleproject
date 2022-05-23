
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	#container {
		width:1000px;
		margin: 0 auto;
	}
	#h3 {
		text-align:center;
	}
	#noqna {
		text-align:center;
	}
	table {
		width:1000px;
	}
	tr th {
		width:200px;
	}
	tr td {
		text-align:center;
		padding:10px;
	}
	input {
		width:60px;
		margin-bottom:10px;
	}
</style>
<title>qna.jsp</title>
</head>
<body>
<div id="container">
<!-- Header -->
		<div id="head">
			<jsp:include page="header.jsp"/>
		</div>
		<br>
		<br>
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
			<th>작성자</th>
			<th>날짜</th>
		</tr>
	 </thead>
	 <tbody>
		 <c:forEach var="list" items="${list }" >
			<tr><td>${list.qnaCategory }</td><td>${list.qnaNo }</td><td><a href="detail.do?job=detail&qnaNo=${list.qnaNo }&id=${Uid }">${list.qnaTitle }</a></td><td>${list.qnaWrite }</td><td>${list.qnaDate }</td>
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
	
	<!-- Footer -->
		<div id="foot">
			<jsp:include page="footer.jsp"/>
		</div>
		
	</div>
</body>
</html>