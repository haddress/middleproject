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

<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>레이아웃</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->



</head>
<body>
	
		<jsp:include page="/WEB-INF/view/nav.jsp" flush="false" />
	
	<c:choose> 
	<c:when test="${empty list }">구매내역이 없습니다.
	</c:when>
	<c:otherwise>
<h3>구매리스트</h3>
<table>
        
        <thead>
            <tr>
                <th>상품사진</th>
                <th>상품이름</th>
                <th>구매자</th>
                <th>상품금액</th>
                <th>수량</th>
                <th>날짜</th>
                <th>주소</th>
                <th>전화번호</th>
                <th>관리</th>
            </tr>
        
        </thead>
   <tbody>
   
      <c:forEach items="${list }" var="list">
        <tr>
        <form action="refund.do" method="post">
        <td><img src="upload/${list.productImg }" width="100"></td>
        <td>${list.productName }</td>
        <td>${list.uorderName }</td>
        <td>${list.productPrice }</td>
        <td>${list.amount }</td>
        <td>${list.uorderDate }</td>
        <td>${list.uorderAddress }</td>
        <td>${list.uorderTel }</td>
        <td><input type="submit" value="반품신청" class="btn btn-primary btn-user btn-block"></td>
        <input type="hidden" name=id value=${list.uid }>
        <input type="hidden" name=orderCode value=${list.uorderCode }>
        
        </form>
        
        </tr>
        </c:forEach>
   
        </tbody>
    </table>
    	 </c:otherwise>
	</c:choose>  

    <form action="${pageContext.servletContext.contextPath }/search.do" method="get">
        
        <input type="hidden" name="job" value="modify">
        <input type="hidden" name="Uid" value="${Uid }">
      <div class = "box"><input type="submit" value="회원정보수정" class="btn btn-primary btn-user btn-block">
    </div>
    </form>
      
       <form action="${pageContext.servletContext.contextPath }/search.do" method="get">
        
        <input type="hidden" name="job" value="delete">
        <input type="hidden" name="Uid" value="${Uid }">
      <div class = "box">  <input type="submit" value="탈퇴" class="btn btn-primary btn-user btn-block">
    </div>
    </form>

<form action="${pageContext.servletContext.contextPath }/index.jsp">

<input type="submit" value="홈" class="btn btn-primary btn-user btn-block">
</form>
    
	<div>
		<jsp:include page="/WEB-INF/view/footer.jsp" flush="false" />
	</div>
</body>
</html>