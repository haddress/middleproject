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
     주소   <input type="text" name="address" value=${voo.uorderAddress }><br>
	 구매자 <input type="text" name="uordername" value=${voo.uorderName }><br>
     전화번호 <input type="tel" name="uordertel" value=${voo.uorderTel }><br>
	 상품명 <input type="text" name="productname" readonly value=${voo.productName }><br>
	 수량	<input type="number" name="amount" readonly value=${voo.amount }><br>
	 상품금액	<input type="number" name="productprice" readonly value=${voo.productPrice }><br>
        <input type="hidden" name="Uid" value="${voo.uid }">
        <input type="hidden" name="paycode" value="${voo.productCode }">
        <input type="hidden" name="productamount" value="${vo1.productAmount }">
        
        <input type="submit" value="구매하기">
    </form>
      
      
        
         <button onclick="history.back()">취소하기</button>
   



</body>
</html>