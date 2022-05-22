<%@page import="middle.dao.qnaDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>qnaUpdate.jsp</title>
</head>
<body>
<form action="../qnaUpdate.do?qnaNp=${qnadetail.qnaNo }">
	<thead>
	</thead>
	<tbody>
		<tr>
			<td>카테고리</td>
				<td>
					<select name="category">
					<option value="상품">상품문의</option>
					<option value="배송">배송문의</option>
					<option value="기타">기타문의</option>
					</select>
				</td>
		</tr>
		<tr>
			<td>제목</td>
				<td><input type="text" placeholder="제목입력" name="qnaTitle" value="${qnadetail.qnaTitle }"></td>
		</tr>
		<tr>
			<td>내용</td>
				<td><input type="text" placeholder="주문번호:" name="qnaContent" value="${qnadetail.qnaContent }" style= "height:350px"></td>
		</tr>
	</tbody>
	<button type="submit">문의글 수정</button>
</form>
</body>
</html>