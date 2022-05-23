<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="middle.vo.ReviewVO"%>

<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>리뷰게시글관리</h2>
		<c:choose>
			<c:when test="${empty list}">
				<h3>리뷰정보없슴</h3>
			</c:when>
			<c:otherwise>

				<table border="1">
					<caption>리뷰글목록</caption>
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
					<tbody>
						<c:forEach items="${list}" var="review">
							<tr>
								<td>${review.reviewCode }</td>
								<td>${review.productName }</td>
								<td>${review.id }</td>
								<td>${review.reviewPass }</td>
								<td>${review.reviewTitle }</td>
								<td>${review.reviewContent }</td>
								<td>${review.reviewDate }</td>
								<td>${review.reviewImg }</td>
								<td>${review.reviewStar }</td>
								<td><a href="">수정</a></td>
								<td><a href="">삭제</a></td>
							</tr>
						</c:forEach>
						<tr>
							<td><input type="submit" value="수정"> <input
								type="button" value="삭제"></td>
						</tr>
					</tbody>
				</table>
			</c:otherwise>
		</c:choose>
</body>
</html>