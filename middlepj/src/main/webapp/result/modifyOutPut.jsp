<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
ȸ������ȭ��
		<c:choose>
			<c:when test="${!empty reult }"><h4>${result }</h4></c:when>
			<c:otherwise>
    		<form action="${pageContext.servletContext.contextPath }/modifyBook.do" method="post">
    			<input type="hidden" name="code" value="${book.bookCode }"><br>
        	����: <input type="text" name="title" value="${book.bookTitle }"><br>
        	����: <input type="text" name="author" value="${book.bookAuthor }"><br>
        	���ǻ�: <input type="text" name="press" value="${book.bookPress }"><br>
        	����: <input type="text" name="price" value="${book.bookPrice }"><br>
        	<input type="submit" value="����">
    	</form>
    	</c:otherwise>
		</c:choose>
</body>
</html>