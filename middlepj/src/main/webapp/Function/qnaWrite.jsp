<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
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
	}
	h3 {
		text-align:center;
	}
	input {
		margin-bottom:10px;
	}
</style>
<title>qnaWrite.jsp</title>
</head>
<body>
<div id="container">
<!-- Header -->
		<div id="head">
			<jsp:include page="header.jsp"/>
		</div>
		<br>
		<br>
  <h3>문의하기</h3>
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
				<td><input type="text" placeholder="제목입력" name="qnaTitle"></td>
			</tr>
			<tr>
				<td class="td">내용</td>
				<td><textarea placeholder="내용입력" name="qnaContent" style="width:400px; height:300px;"></textarea></td>
			</tr>
			<tr>
				<td class="td">작성자</td>
				<td><input type="text" placeholder="작성자 입력" name="qnaWriter"></td>
			</tr>
			<tr>
				<td class="td">비밀번호</td>
				<td><input type="password" name="qnaPw"></td>
			</tr>
		</tbody>
	</table>
	</div>
		<input type="submit" value="글 저장">
  </form>
  <!-- Footer -->
		<div id="foot">
			<jsp:include page="footer.jsp"/>
		</div>		
</body>
</html>