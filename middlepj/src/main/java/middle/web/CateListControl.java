package middle.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import middle.service.ProductService;
import middle.vo.ProductVO;

public class CateListControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// 카테고리별 목록
		
		String cate = request.getParameter("cate");
		if(cate.equals("snack")) {
			cate = "간식";
		} else if(cate.equals("toy")) {
			cate = "장난감";
		} else if(cate.equals("goods")) {
			cate = "실내용품";
		} else {
			cate = "목욕/미용";
		}
		
		ProductService service = new ProductService();
		List<ProductVO> list = service.cateList(cate);
		
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("result/ProCateList.jsp").forward(request, response);
	}

}
