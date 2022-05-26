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
<title>Doggy marCat :: 반려동물의 모든 것</title>
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
      		<br><br><br><br><br><br><br>
      		
      		
	      <h4 style=" text-align: center;">  회원님의 아이디는 <%=mid%> 입니다 </h4>  
	      <br><br><br><br><br><br><br><br>
	     <form action="${pageContext.request.contextPath}/view/login.jsp" method="post">
 		    <div style=" text-align: left;">
 		    <input type="submit" value="로그인" class="btn btn-primary btn-user btn-block" style=" display: inline-block; position: absolute; top: 350px; left: 800px "/>
 		    </div>
 		    </form>
 		    
 		    <form action="${pageContext.request.contextPath}/view/pwfind.jsp" method="post">
 		    <div style=" text-align: right;">
 		    <input type="submit" value="비밀번호찾기" class="btn btn-primary btn-user btn-block" style=" display: inline-block; position: absolute; top: 350px; right: 800px "/>
 		    </div>
 		    </form>
      <%
  } else if(mid == null) {
 %>
				<br><br><br><br><br><br><br>
	      <h4 style=" text-align: center;">  등록된 정보가 없습니다 </h4>  
				<br><br><br><br><br><br><br><br>
 		    
 		    <div style=" text-align: left;">
 		    <input type="button" id="btnback" value="다시 찾기" onClick="history.back()" class="btn btn-primary btn-user btn-block" style=" display: inline-block; position: absolute; top:380px; left:700px;"/>
 		    </div>
 		    
 		    <form action="${pageContext.request.contextPath}/view/add.jsp" method="post">
 		    <div style=" text-align: right;">
 		    <input type="submit" value="회원가입" onClick="history.back()" class="btn btn-primary btn-user btn-block" style=" display: inline-block; position: absolute; top:380px; right:700px;"/>
 		    </div>
 		    </form>
 		    
 		    
 		    
 		    

       
       <%
  }%> 
     <jsp:include page="/WEB-INF/view/footer.jsp" flush="false"/>
</body>
</html>
