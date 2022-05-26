<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Doggy marCat :: 반려동물의 모든 것</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
</head>
<body>

	<%

	String Uid = (String) session.getAttribute("Uid");
	String check = null;
	if (Uid == null) {
		check = "guest";

	} else if (Uid.equals("admin")) {
		check = "admin";
	} else if (Uid != null) {
		check = "user";

	}
	%>



	<!-- Navigation-->

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container px-4 px-lg-5">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page"
						href="<%=request.getContextPath()%>/index.jsp">홈</a></li>
					<%
					if (check.equals("guest")) {
					%>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page"
						href="${pageContext.request.contextPath}/view/add.jsp">회원가입</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page"
						href="${pageContext.request.contextPath}/view/login.jsp">로그인</a></li>
					<%
					} else if (check.equals("admin")) {
					%>
					
					<li class="nav-item"><a class="nav-link active"
						aria-current="page"
						href="${pageContext.request.contextPath}/view/admin.jsp">관리자페이지로 이동</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="${pageContext.request.contextPath}/logout.do" style="text-decoration: none">로그아웃</a>
					</li>
					
					
						<%
						}else if (check.equals("user")){
						%>
							
						
					<li class="nav-item"><a class="nav-link active"
						aria-current="page"
						href="<%=request.getContextPath()%>/mypage.do">마이페이지</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page"
						href="<%=request.getContextPath()%>/logout.do">로그아웃</a>
					
						
						
						<%}
										
						
						%>
					
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">

							
							<li><a class="dropdown-item"
								href="${pageContext.request.contextPath}/CateList.do?cate=snack">간식</a></li>
							<li><a class="dropdown-item"
								href="${pageContext.request.contextPath}/CateList.do?cate=toy">장난감</a></li>
							<li><a class="dropdown-item"
								href="${pageContext.request.contextPath}/CateList.do?cate=goods">실내용품</a></li>
							<li><a class="dropdown-item"
								href="${pageContext.request.contextPath}/CateList.do?cate=wash">목욕/미용</a></li>
								
								
								
						</ul></li>
						<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">커뮤니티</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">

							<li><a class="dropdown-item"
								href="${pageContext.request.contextPath}/review.do">리뷰</a></li>
							<li><a class="dropdown-item"
								href="${pageContext.request.contextPath}/qna.do">Q & A</a></li>
			
								
						</ul></li>
        </ul>
        
        <% 
        if (check.equals("guest")){
         	
        }else if(check.equals("user")){%>
        	${Uid }님 반갑습니다
        	
        	
        <% }else if(check.equals("admin")){%>
        	관리자 로그인
        <% }       
        
        %>



			</div>
		</div>
	</nav>
</body>
</html>