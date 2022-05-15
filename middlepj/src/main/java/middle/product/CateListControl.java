package middle.product;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JH.web.Controller;

public class CateListControl implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String category = (String) request.getParameter("category");
		String temp = "";
		if (category.equals("snack"))temp="간식";
		else if (category.equals("toy"))temp="장난감";
		else if (category.equals("goods"))temp="실내용품";
		else if (category.equals("wash"))temp="목욕/미용";
		
		
		ProductService service = new ProductService();
		List<ProductVO> list = service.cateList(category);
		
		request.setAttribute("all", list);
		
		request.getRequestDispatcher("ProCateList.jsp").forward(request, response);
		
	}
}
