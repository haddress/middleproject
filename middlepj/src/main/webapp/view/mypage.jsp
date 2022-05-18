<%@page import="middle.vo.UserOrderVO"%>
<%@page import="middle.dao.ModiFyDAO"%>
<%@page import="middle.vo.UserVO1"%>
<%@page import="middle.service.Markservice"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<% 
String Uid = (String) session.getAttribute("Uid");
%>
<meta charset="UTF-8">
<title>마이페이지</title>

</head>
<body>
<h3>구매리스트</h3>


<table>
        <caption>마이페이지</caption>
        <thead>
            <tr>
                <th>사진</th>
                <th>상품명</th>
                <th>구매날짜</th>
                <th>전화번호</th>
                <th>구매자이름</th>
            </tr>
        </thead>
        <tbody>
         <c:forEach items="${list }" var="list">
	     <tr><td>${list.UorderTel }</td><td>${list.UorderCode }</td><td>${list.UorderDate }</td><td>${list.UorderAddress }</td><td>${list.UorderName }</td></tr>
        </c:forEach>
        </tbody>
    </table>

    <form action="../Se" method="get">
        
        <input type="hidden" name="job" value="modify">
        <input type="submit" value="회원정보수정">
    </form>
		



    

</body>
</html>