<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Doggy marCat :: 반려동물의 모든 것</title>
</head>
<body>
<%
   String id = (String) session.getAttribute("id");
   String pw = (String) session.getAttribute("pass");
   
   out.print("<h3>"+ id + "님 환영합니다</h3>");
   
%>
<a href="${pageContext.servletContext.contextPath }/view/index.jsp">첫페이지</a>
</body>
</html>