package middle.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import middle.service.ProductService;
import middle.vo.PagingVO;
import middle.vo.ProductVO;

public class CateListControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// 카테고리별 목록
		
		// 첫페이지
		
		String cate = request.getParameter("cate");
		if(cate.equals("snack") || cate.equals("간식")) {
			cate = "간식";
		} else if(cate.equals("toy") || cate.equals("장난감")) {
			cate = "장난감";
		} else if(cate.equals("goods") || cate.equals("실내용품")) {
			cate = "실내용품";
		} else {
			cate = "목욕/미용";
		}
		
		System.out.println(cate);
		
		int pageNum = 1;
		int amount = 9;
		
		if(request.getParameter("pageNum") != null && request.getParameter("amount") != null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
			amount = Integer.parseInt(request.getParameter("amount"));
		}
		
		ProductService service = new ProductService();
		List<ProductVO> list = service.getProductList(pageNum, amount, cate);
		
		int total = service.getTotalPd(cate);
		PagingVO pageVO = new PagingVO(pageNum, amount, total);
		
		request.setAttribute("pageVO", pageVO);
		
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("result/ProCateList.jsp").forward(request, response);
	}

}
