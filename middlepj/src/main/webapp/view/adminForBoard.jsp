<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="middle.vo.ReviewVO"%>
<%@ page import="middle.vo.qnaVO"%>
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
			<h3>유저정보없음</h3>
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
					<td>${review.review_code }</td>
					<td>${review.product_name }</td>
					<td>${review.writer }</td>
					<td>${review.review_pw }</td>
					<td>${review.review_title }</td>
					<td>${review.review_content }</td>
					<td>${review.review_date }</td>
					<td>${review.review_img }</td>
					<td>${review.review_star }</td>
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





	<h2>QnA게시글관리</h2>
	<c:choose>
		<c:when test="${empty list}">
			<h3>유저정보없음</h3>
		</c:when>
		<c:otherwise>
			<table border="1">
				<tr>
					<th>QnA번호</th>
					<th>물건코드</th>
					<th>QnA카테고리</th>
					<th>QnA글쓴이</th>
					<th>QnA글비번</th>
					<th>QnA제목</th>
					<th>QnA내용</th>
					<th>QnA날짜</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>

				<tr>

					<td>getQnaNo()</td>
					<td>getProductCode()%></td>
					<td>getQnaCategory()</td>
					<td>getQnaWrite()</td>
					<td>getQnaPw()</td>
					<td>getQnaTitle()</td>
					<td>getQnaContent()</td>
					<td>getQnaContent()</td>
					<td>getQnaDate()</td>
					<td>수정</td>
					<td>삭제</td>
				</tr>
				>
				<tr>
					<input type="submit" value="수정">
					<input type="submit" value="삭제">
				</tr>
			</table>
		</c:otherwise>
	</c:choose>


</body>
</html>