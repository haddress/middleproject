<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="middle.dao.ProductDAO"%>
<%@ page import="middle.vo.ProductVO"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



	<table width="900" border="1" bordercolor="gray">
		<tr height="100">
			<td align="center"colspan="3">
				<font size="7" color="gray">${temp }</font>
			</td>
		</tr>
		
<%
	ProductDAO dao = new ProductDAO();
	List<ProductVO> list = dao.listProduct(getInitParameter("category"));
	int j = 0;
	for(int i = 0; i < list.size();i++){
		ProductVO vo = list.get(i);
		if(j%3==0){
%>		
		<tr height="220">

<%
		}
%>
		<td width="333" align="center">
				<a href ="main.jsp?center=ProductDetail.do?productCode=<%=vo.getProduct_code()%>">
				<img alt ="" src="images/<%=vo.getProduct_img()%>" width="300" height="200"> 
				</a><p>
				<font size ="3" color="gray"><b> 상품명 : <%=vo.getProduct_name()%></b></font></p>
			</td>

	<% 		
			j = j+1;//j값을 가하여 하나의 행에 총 3개의 정보를 보여주기 위해서 증가
		}
 	%>
	
	</table>

</body>
</html>