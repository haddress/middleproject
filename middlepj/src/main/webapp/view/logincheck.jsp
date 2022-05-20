<%@page import="middle.vo.UserVO1"%>
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


UserVO1 vo = service.check(Uid, Upw);
String id = vo.getUid();
String pw = vo.getUpw();


if(id==!null) {


service.checkUser(Uid, Upw);
int r = service.checkUser(Uid, Upw);
String a = "";
System.out.println(r);
if(r==1) {


   session.setAttribute("Uid", Uid);
   session.setAttribute("Upw", Upw);
   
   response.sendRedirect("../index.jsp");
}else if(vo==0) {%>
   <script>
   alert("아이디, 비밀번호 확인");
   history.back();
   </script>   

<%   
   
}
%>
<title>Insert title here</title>
</head>

</html>