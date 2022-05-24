<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="middle.vo.qnaVO"%>

<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>QnA게시글관리</h2>
	<c:choose>
		<c:when test="${empty list}">
			<h3>QnA정보없슴</h3>
		</c:when>
		<c:otherwise>
			<table border="1">
				<thead>
					<tr>
						<th>QnA번호</th>
						<th>물건코드</th>
						<th>QnA카테고리</th>
						<th>QnA글쓴이</th>
						<th>QnA글비번</th>
						<th>QnA제목</th>
						<th>QnA내용</th>
						<th>QnA날짜</th>
						
					</tr>

				</thead>
				<tbody>
					<c:forEach items="${list}" var="qna">
				<tr>
					<form action="adminQnaDelete.do" method="post">
						<td>${qna.qnaNo}</td>
						<td>${qna.productCode}</td>
						<td>${qna.qnaCategory}</td>
						<td>${qna.qnaWrite}</td>
						<td>${qna.qnaPw}</td>
						<td>${qna.qnaTitle}</td>
						<td>${qna.qnaContent}</td>
						<td>${qna.qnaDate}</td>
						<td><input type="submit" value="한건삭제">
								<input type="hidden" name=qnaNo value=${qna.qnaNo }>
						</td>
					</form>
				</tr>
				</c:forEach>
				</tbody>

				
			</table>
		</c:otherwise>
	</c:choose>
	<a href="${pageContext.servletContext.contextPath }/view/admin.jsp">관리자페이지로</a>
	<br>
	
	
	
	
	
</body>
</html>