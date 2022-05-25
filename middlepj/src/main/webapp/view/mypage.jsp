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
<style>
h4 {
text-align: center;
}
h2 {
text-align: center;
}
th{
text-align: center;
}
td {        text-align: center;      }
</style>
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style1.css" />


</head>
<body>
	
		<jsp:include page="/WEB-INF/view/nav.jsp" flush="false" />
    
    <c:choose> 
    
      <c:when test="${empty list }"><h4 style="text-align:center; margin-top:250px; margin-bottom:250px;">구매내역이 없습니다.</h4>
      
      </c:when>
      
      <c:otherwise>
  <div class="content">
    
    <div class="container">
      <h2>구매리스트</h2>

      <div class="table-responsive">

        <table class="table table-striped custom-table" style=" text-align:center;">
          <thead>
            <tr>
              
              <th></th>
              <th></th>
              <th>상품이름</th>
              <th>구매자</th>
              <th>금액</th>
              <th>수량</th>
              <th>날짜</th>
              <th>주소</th>
              <th>전화번호</th>
              <th></th>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${list }" var="list">
            <tr>
              <form action="refund.do" method="post">
              <td>
                <td><img src="upload/${list.productImg }" width="100"></td>
              </td>
              <td>
                ${list.productName }
                
              </td>
              <td>
                ${list.uorderName }
              </td>
              <td>
                ${list.productPrice }
              </td>
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
      </div>


    </div>

  </div>
  <form action="${pageContext.servletContext.contextPath }/search.do" method="get">
        
    <input type="hidden" name="job" value="modify">
    <input type="hidden" name="Uid" value="${Uid }">
  <div style=" text-align: center;"><input type="submit" style=" display: inline-block;" value="회원정보수정" class="btn btn-primary btn-user btn-block">
</div>
</form>
  

</form>
  <jsp:include page="/WEB-INF/view/footer.jsp" flush="false" />
</body>
</html>