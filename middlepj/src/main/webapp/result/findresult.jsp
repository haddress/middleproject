<%@page import="middle.service.Markservice"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css"/>
</head>
<body>
<jsp:include page="/WEB-INF/view/nav.jsp" flush="false"/>
<%
request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("Uname");
    String tel = request.getParameter("Utel");
     System.out.println(tel);
     System.out.println(id);
Markservice service = new Markservice();
 String mid = service.idfind(id, tel); 
 
%>
  
      <%
       if (mid != null) {
      %>
      
	      <h4>  회원님의 아이디는 <%=mid%> 입니다 </h4>  
	     <form action="${pageContext.request.contextPath}/view/login.jsp" method="post">
 		    <input type="submit" value="로그인" class="btn btn-primary btn-user btn-block"/>
 		    
 		    </form>
 		    <form action="${pageContext.request.contextPath}/view/pwfind.jsp" method="post">
 		    <input type="submit" value="비밀번호찾기" class="btn btn-primary btn-user btn-block"/>
 		    </form>
      <%
  } else if(mid == null) {
 %>

	      <h4>  등록된 정보가 없습니다 </h4>  

 		    <input type="button" id="btnback" value="다시 찾기" onClick="history.back()"/>
 		    
 		    
 		    <a class="small" href="${pageContext.request.contextPath}/view/add.jsp">회원가입 하러가기!</a>
 		    
 		    

       
       <%
  }%> 
     <jsp:include page="/WEB-INF/view/footer.jsp" flush="false"/>
</body>
</html>
