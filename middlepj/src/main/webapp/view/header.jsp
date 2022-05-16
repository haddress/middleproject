<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dobby marCat</title>
<style>
#head {
	width: 1000px;
}
nav ul {
	list-style: none;
}
#home {
	float: left;
}
.log {
	float: right;
	margin-right: 10px;
}
.cate {
	float: left;
	margin: 0 90px;
}
</style>
</head>
<body>

		<%
			String id = (String) session.getAttribute("id");
		
			if(id==null) {
				id="guest";
			}
		%>
		
		<div id="head">
		
			<nav id="info">
				<ul>
					<li id="home"><a href="main.jsp" style="text-decoration:none">홈</a></li>
						<%
							if(id.equals("guest")) {
						%>
							<li class="log"><a href="main.jsp?center=QNA.jsp" style="text-decoration:none">고객센터</a></li>
							<li class="log"><a href="add.jsp" style="text-decoration:none">회원가입</a></li>
							<li class="log"><a href="main.jsp?center=UserLogin.jsp" style="text-decoration:none">로그인</a></li>
						<%
							} else {
						%>	
							<li class="log"><%=id %> 님 반갑습니다.</li>
							<li class="log"><a href="main.jsp?center=Mypage.jsp" style="text-decoration:none">마이페이지</a></li>
							<li class="log"><a href="main.jsp?center=Logout.jsp" style="text-decoration:none">로그아웃</a><li>
							<li class="log"><a href="main.jsp?center=QNA.jsp" style="text-decoration:none">고객센터</a><li>
						<%
							}
						%>
				</ul>
			</nav>
			<br>
			<nav id="category">
				<ul>
					<li class="cate"><a href="main.jsp?center=CateList.do?category=snack" style="text-decoration:none">간식</a></li>
					<li class="cate"><a href="main.jsp?center=CateList.do?category=toy" style="text-decoration:none">장난감</a></li>
					<li class="cate"><a href="main.jsp?center=CateList.do?category=goods" style="text-decoration:none">실내용품</a></li>
					<li class="cate"><a href="main.jsp?center=CateList.do?category=wash" style="text-decoration:none">목욕/미용</a></li>
				</ul>
			</nav>
		
		</div>