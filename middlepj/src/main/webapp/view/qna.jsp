
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>qna.jsp</title>
</head>
<body>
 <c:choose> 
	<c:when test="${empty list }"><h3>문의글 정보가 없습니다</h3></c:when>
	<h6>아</h6>
	<c:otherwise>
	<h3>고객센터</h3> 
	<table border="1">
	<thead>
		<tr>
			<th>카테고리</th>
			<th>문의번호</th>
			<th>제목</th>

			<th>번호</th>
			<th>아이디</th>
			<th>제목</th>
			<th>내용</th>

			<th>작성자</th>
			<th>날짜</th>
		</tr>
	 </thead>
	 <tbody>
		 <c:forEach var="list" items="${list }" >
			<tr><td>${list.qnaCategory }</td><td>${list.qnaNo }</td><td>${list.qnaTitle }</td><td>${list.qnaWrite }</td><td>${list.qnaDate }</td>
			</tr>
		</c:forEach>
		
	 </tbody>
	</table>

	<a href="view/qnaWrite.jsp">글쓰기</a>
	 </c:otherwise>
	</c:choose>  
	   
	<a href="write.jsp">글쓰기</a>
</body>
</html>