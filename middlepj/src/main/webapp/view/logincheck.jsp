<%@page import="middle.vo.UserVO1"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="middle.service.Markservice" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<% String Uid = request.getParameter("Uid");
String Upw = request.getParameter("Upw");

Markservice service = new Markservice();


if(service.checkUser(Uid, Upw) == 1){
	session.setAttribute("Uid", Uid);
	session.setAttribute("Upw", Upw);
	%><script>alert("로그인 성공!"); location.href="../index.jsp" </script>
	<% 
}else if(service.checkUser(Uid, Upw) == 2){
	session.setAttribute("Uid", Uid);
	session.setAttribute("Upw", Upw);
	%><script>alert("관리자 로그인"); location.href="../index.jsp" </script><%
}else{
	%><script>alert("아이디,비밀번호 확인"); history.back(); </script><%
}
%>
<title>Insert title here</title>
</head>

</html>