<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
    <h3>ȸ����������</h3>
    <form action="${pageContext.servletContext.contextPath }/searchBook.do" method="get">
       ��й�ȣ �Է� <input type="text" name="passwd" id=""><br>
        <input type="hidden" name="job" value="modify">
        <input type="submit" value="��ȸ">
</form>
</body>
</html>