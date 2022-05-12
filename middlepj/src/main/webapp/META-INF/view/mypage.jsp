<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>마이페이지</title>
</head>

<body>
		<c:choose>
		<c:when test="${empty  }"><h4>구매내역없음</h4></c:when>
		<c:otherwise>
    <table>
        <caption>주문내역</caption>
        <thead>
            <tr>
                <th>상품사진</th>
                <th>상품명</th>
                <th>금액</th>
                <th>상태</th>
                <th>비고</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${ }" var="">
        	<tr><td>${ }</td><td>${ }</td><td>${ }</td><td>${ }</td><td>${ }</td></tr>
        </c:forEach>

        </tbody>
    </table>    
		</c:otherwise>
		</c:choose>
		        <form action="${pageContext.servletContext.contextPath }/usermodify.do" method="get">
         <input type="hidden" name="job" value="modify">
        <input type="submit" value="회원정보수정">
        </form>
        <form action="${pageContext.servletContext.contextPath }/" method="get">
         <input type="hidden" name="job" value="delete">
        <input type="submit" value="탈퇴하기">
        </form>
    <a href="${pageContext.servletContext.contextPath }/index.jsp">첫페이지</a>
</body>

</html>