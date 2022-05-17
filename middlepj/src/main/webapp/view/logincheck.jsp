<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="middle.service.Markservice" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<% String Uid = request.getParameter("Uid");
String Upw = request.getParameter("Upw");

Markservice service = new Markservice();
service.checkUser(Uid, Upw);
int r = service.checkUser(Uid, Upw);
System.out.println(r);

if(r==1) {
	
	session.setAttribute("id", Uid);
	session.setAttribute("pass", Upw);
	response.sendRedirect("main.jsp");
}else if(r==0) {
	out.println("<script>alert('아이디 비번확인');</script>");
	response.sendRedirect("login.jsp");
}
%>
<title>Insert title here</title>
</head>

</html>