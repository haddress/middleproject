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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css"/>
<style>
@import url('https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css');

* { 
font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui, Roboto, 'Helvetica Neue', 'Segoe UI', 'Apple SD Gothic Neo', 'Noto Sans KR', 'Malgun Gothic', sans-serif;
}

	#container {
		width:1000px;
		margin: 0 auto;
	}
	#writetable {
		width:1000px;
		margin:auto;
	}
	#write {
		margin:auto;
	}
	.td {
		display:inline-block;
		margin-right:20px;
		text-weight:bold;
	}
	#show {
		text-align:center;
		margin-top:30px;
		margin-bottom:30px;
	}
	input {
		margin-bottom:10px;
	}
	#add {
		display:block;
		margin:auto;
		margin-bottom:10px;
	}
</style>
<title>qnaWrite.jsp</title>
</head>
<body>
<jsp:include page="/WEB-INF/view/nav.jsp" flush="false"/>
<div id="container">

  <h3 id="show">문의하기</h3>
  <form  action="../qnaAdd.do" method="post">
  <div id="writetable">
	<table id="write">
		<thead>
		</thead>
		<tbody>
			<tr>
				<td class="td">카테고리</td>
				<td>
					<select name="category">
					<option value="상품">상품문의</option>
					<option value="배송">배송문의</option>
					<option value="기타">기타문의</option>
					</select>
				</td>
			</tr>
			<tr>
				<td class="td">제목</td>
				<td><input type="text" placeholder="제목입력" name="qnaTitle" style="width:400px"></td>
			</tr>
			<tr>
				<td class="td">내용</td>
				<td><textarea placeholder="내용입력" name="qnaContent" style="width:400px; height:300px;"></textarea></td>
			</tr>
				<input type="hidden" name="Uid" value="${Uid }">
			<tr>
				<td class="td">비밀번호</td>
				<td><input type="password" name="qnaPw" style="width:80px;"></td>
			</tr>
		</tbody>
	</table>
	</div>
		<input id="add" type="submit" value="글 저장">
  </form>
  </div>
<jsp:include page="/WEB-INF/view/footer.jsp" flush="false"/> 
</body>
</html>