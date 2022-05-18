<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>조회결과페이지</h3>
	<c:if test="${!empty result }"><h4>${result }</h4></c:if>
    <c:if test="${!empty book }">
    <h4>${book.uid } / ${book.pwd } / ${book.uname }
      / ${book.utel } / ${book.uemail }/ ${book.uaddress }
    </h4> 
  </c:if>

 <a href="${pageContext.servletContext.contextPath }/view/main.jsp">첫페이지</a>
</body>
</html>