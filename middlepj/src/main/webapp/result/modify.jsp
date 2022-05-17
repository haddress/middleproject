<%@page import="middle.service.Markservice"%>
<%@page import="middle.vo.UserVO1"%>
<%@page import="middle.dao.ModiFyDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
</head>
<body>
	<%
	String Uid = (String) session.getAttribute("Uid");
	
		ModiFyDAO vo = new ModiFyDAO();
		Markservice service = new Markservice();
		service.ussear(Uid);
	%>
	<form action="/modifyBook.do" method="post">
    			<input type="hidden" name="code" value="${book.bookCode }"><br>
        	아이디: <input type="text" name="title" value="${book.bookTitle }"><br>
        	비밀번호: <input type="text" name="author" value="${book.bookAuthor }"><br>
        	이름: <input type="text" name="press" value="${book.bookPress }"><br>
        	전화번호: <input type="text" name="price" value="${book.bookPrice }"><br>
        	이메일: <input type="text" name="price" value="${book.bookPrice }"><br>
        	주소: <input type="text" name="price" value="${book.bookPrice }"><br>
        	<input type="submit" value="수정">
	
	</form>
	
	<script>

function button_event(){

if (confirm("정말 삭제하시겠습니까??") == true){    //확인
    document.form.submit();

}else{   //취소
    return;
}
}

</script>
<form action="delete.do" method="get">

<input type="submit" value="회원탈퇴" onclick="button_event();">
</form>

	

</body>
</html>