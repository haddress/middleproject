<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginOutput.jsp</title>
</head>
<body>
<h3>검색결과</h3>
  <c:if test="${!empty result }"><h4>${result }</h4></c:if>
  <c:if test="${!empty login }">
    <h4>${login.id } / ${login.name } / ${login.email } / ${login.passwd } </h4> 
  </c:if>
  <jsp:include page="home.jsp">></jsp:include>
</body>
</html>