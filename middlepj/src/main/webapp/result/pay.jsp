<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <form action="${pageContext.servletContext.contextPath }/realbuy.do" method="get">
        <input type="text" name="address" value=${voo.uorderAddress }><br>
		<input type="text" name="uordername" value=${voo.uorderName }><br>
		<input type="tel" name="uordertel" value=${voo.uorderTel }><br>
		<input type="text" name="productname" readonly value=${voo.productName }><br>
		<input type="number" name="amount" readonly value=${voo.amount }><br>
		<input type="number" name="productprice" readonly value=${voo.productPrice }><br>
        <input type="hidden" name="Uid" value="${voo.uid }">
        <input type="hidden" name="paycode" value="${voo.productCode }">
        
        <input type="submit" value="구매하기">
    </form>
      
      
        
         <button onclick="history.back()">취소하기</button>
   



</body>
</html>