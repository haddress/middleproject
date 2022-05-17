<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록 페이지</title>
</head>
<body>
	<h3>상품등록화면</h3>
	<form action="../productAdd.do" method="post" enctype="multipart/form-data">
		상품카테고리: 
		<select name="pcate">
			<option value="snack">간식
			<option value="toy">장난감
			<option value="goods">실내용품
			<option value="wash">목욕/미용
		</select>
		상품명: <input type="text" name="pname"><br>
		상품가격: <input type="text" name="pprice"><br>
		상품수량: <input type="number" name="pamount"><br>
		상품설명: <textarea name="pexp" rows="4" cols="50"></textarea><br>
		상품이미지: <input type="file" name="pimg">
		<input type="submit" value="추가">
		
		
	</form>
</body>
</html>