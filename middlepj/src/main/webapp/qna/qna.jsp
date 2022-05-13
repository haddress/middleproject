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
	<c:otherwise>
	<table border="1">
	<thead>
		<tr>
			<th>카테고리</th>
			<th>번호</th>
			<th>제목</th>
			<th>내용</th>
			<th>작성자</th>
			<th>날짜</th>
		</tr>
	 </thead>
	 <tbody>
		<c:forEach var="q" items="${list }" >
			<tr><td>${q.qnaCategory }</td><td>${q.qnaNo }</td><td>${q.qnaTitle }</td><td>${q.qnaContent }</td><td>${q.qnaWriter }</td><td>${q.qnaDate }</td>
			</tr>
		</c:forEach>
	 </tbody>
	</table>
	</c:otherwise>
	</c:choose>
</body>
</html>