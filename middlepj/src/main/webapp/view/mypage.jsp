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

<meta charset="UTF-8">
<title>마이페이지</title>

</head>
<body>
<h3>구매리스트</h3>
<table>
        <caption>마이페이지</caption>
        <thead>
            <tr>
                <th>주문번호</th>
                <th>구매날짜</th>
                <th>주소</th>
                <th>상품이름</th>
                <th>전화번호</th>
            </tr>
        </thead>
	<tbody>
		<c:forEach items="${list }" var="list">
        <tr><td>${list.uorderCode }</td>
        <td>${list.uorderDate }</td>
        <td>${list.uorderAddress }</td>
        <td>${list.uorderName }</td>
        <td>${list.uorderTel }</td>
        
        
        </tr>
        </c:forEach>
	
        </tbody>
    </table>
    <form action="${pageContext.servletContext.contextPath }/search.do" method="get">
        
        <input type="hidden" name="job" value="modify">
        <input type="hidden" name="Uid" value="${Uid }">
        <input type="submit" value="회원정보수정">
    </form>
		
	    <form action="${pageContext.servletContext.contextPath }/search.do" method="get">
        
        <input type="hidden" name="job" value="delete">
        <input type="hidden" name="Uid" value="${Uid }">
        <input type="submit" value="탈퇴">
    </form>


    

</body>
</html>