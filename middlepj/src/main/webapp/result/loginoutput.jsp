<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>�α��μ���������</title>
</head>
<body>
<%
   String id = (String) session.getAttribute("id");
   String pw = (String) session.getAttribute("pass");
   
   out.print("<h3>"+ id + "�� ȯ���մϴ�</h3>");
   
%>
<a href="${pageContext.servletContext.contextPath }/view/index.jsp">ù������</a>
</body>
</html>