<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="qna.qnaDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="qna" class="qna.qnaVO" scope="page" />
<jsp:setProperty name="qna" property="qnaTitle" />
<jsp:setProperty name="qna" property="qnaContent" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
 	if(qna.getQnaTitle() == null || qna.getQnaContent() == null ) {
 		PrintWriter script = response.getWriter();
 		script.println("alert('입력이 되지 않은 항목이 있습니다.')");
 	} else {
 		qnaDAO dao = new qnaDAO();
 		
 	}
 %>
</body>
</html>