<%@page import="middle.service.Markservice"%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title></title>



</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("Uid");
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
	     <form action="../view/login.jsp" method="post">
 		    <input type="submit" value="로그인"/>
 		    
 		    </form>
 		    <form action="../view/pwfind.jsp" method="post">
 		    <input type="submit" value="비밀번호찾기">
 		    </form>
      <%
  } else if(mid == null) {
 %>

	      <h4>  등록된 정보가 없습니다 </h4>  

 		    <input type="button" id="btnback" value="다시 찾기" onClick="history.back()"/>
 		    <input type="button" id="btnjoin" value="회원가입" onClick="add.jsp"/>
 		    
 		    

       
       <%
  }%> 
      
</body>
</html>
