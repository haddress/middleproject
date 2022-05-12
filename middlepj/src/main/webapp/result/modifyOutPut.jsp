<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
회원수정화면
		<c:choose>
			<c:when test="${!empty reult }"><h4>${result }</h4></c:when>
			<c:otherwise>
    		<form action="${pageContext.servletContext.contextPath }/modifyBook.do" method="post">
    			<input type="hidden" name="code" value="${book.bookCode }"><br>
        	제목: <input type="text" name="title" value="${book.bookTitle }"><br>
        	저자: <input type="text" name="author" value="${book.bookAuthor }"><br>
        	출판사: <input type="text" name="press" value="${book.bookPress }"><br>
        	가격: <input type="text" name="price" value="${book.bookPrice }"><br>
        	<input type="submit" value="수정">
    	</form>
    	</c:otherwise>
		</c:choose>
</body>
</html>