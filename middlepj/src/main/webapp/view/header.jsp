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
	margin: 0 auto;
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
	margin: 0 5px;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.commu {
	border: none;
	font-size: 16px;
	background: rgba(255, 255, 255, 0);
}

#drop-content {
	position: absolute;
	z-index: 1;
}

#drop-content a {
	display: block;
	color: black;
	text-decoration: none;
	pading: 3px;
	margin: 5px;
}
</style>
</head>
<body>

	<%
	String Uid = (String) session.getAttribute("Uid");
	String check = null;
	if (Uid == null) {
		check = "guest";

	} else if (Uid.equals("admin")) {
		check = "admin";
	} else if (Uid != null){
		check = "user";
	}
	
	%>

	<div id="head">

		<nav id="info">
			<ul>

				<li id="home"><a
					href="<%=request.getContextPath()%>/index.jsp"
					style="text-decoration: none">홈</a></li>
				<%
				if (check =="guest") {
				%>
				<li class="log"><a
					href="<%=request.getContextPath()%>/view/add.jsp"
					style="text-decoration: none">회원가입</a></li>
				<li class="log"><a
					href="<%=request.getContextPath()%>/view/login.jsp"
					style="text-decoration: none">로그인</a></li>
				<%
				} else if (check=="admin") {
				%>
								<li class="log"><%=Uid%> 관리자님 반갑습니다.</li>
				<li class="log"><a
					href="<%=request.getContextPath()%>/admin.jsp"
					style="text-decoration: none">관리자페이지로 이동</a>
				<li>
				<li class="log"><a
					href="<%=request.getContextPath()%>/mypage.do"
					style="text-decoration: none">마이페이지</a></li>
				<li class="log"><a
					href="<%=request.getContextPath()%>/logout.do"
					style="text-decoration: none">로그아웃</a>
				</li>
				
				
					<%
					} else if (check=="user") {
					%>
				<li class="log"><b><%=Uid%> </b>님 반갑습니다.</li>

				<li class="log"><a
					href="<%=request.getContextPath()%>/mypage.do"
					style="text-decoration: none">마이페이지</a></li>
				<li class="log"><a
					href="<%=request.getContextPath()%>/logout.do"
					style="text-decoration: none">로그아웃</a>
				</li>

					<%
					}
					%>
				
			</ul>
		</nav>
		<br>

		<nav id="category">
			<ul>
				<li class="cate"><a
					href="${pageContext.request.contextPath}/CateList.do?cate=snack"
					style="text-decoration: none; color: black">간식</a></li>
				<li class="cate"><a
					href="${pageContext.request.contextPath}/CateList.do?cate=toy"
					style="text-decoration: none; color: black">장난감</a></li>
				<li class="cate"><a
					href="${pageContext.request.contextPath}/CateList.do?cate=goods"
					style="text-decoration: none; color: black">실내용품</a></li>
				<li class="cate"><a
					href="${pageContext.request.contextPath}/CateList.do?cate=wash"
					style="text-decoration: none; color: black">목욕/미용</a></li>
				<li class="dropdown"><button onclick="dp_menu()" class="commu">커뮤니티</button>

					<div style="display: none;" id="drop-content">
						<a href="${pageContext.request.contextPath}/review.do">리뷰</a> <a
							href="${pageContext.request.contextPath}/qna.do">Q & A</a>
					</div></li>
			</ul>
		</nav>


	</div>

</body>
<script>
	function dp_menu() {
		let click = document.getElementById("drop-content");
		if (click.style.display === "none") {
			click.style.display = "block";
		} else {
			click.style.display = "none";
		}

	}
</script>