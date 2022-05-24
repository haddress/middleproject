<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title></title>
</head>
<body>

			
				<h3>휴대폰 본인확인</h3>
			<form action="../result/findresult.jsp" method="post">
					
			이름	<input type="text" name="Uid" placeholder = "등록한 이름"><br>
			
			전화번호<input type="text" name="Utel" placeholder = "휴대폰번호를 '-'없이 입력">
			
			<br>
	
		<input type="submit" name="enter" value="찾기">
		</form>
		<input type="button" name="cancle" value="취소" onClick="history.back()">
 
</body>
</html>
