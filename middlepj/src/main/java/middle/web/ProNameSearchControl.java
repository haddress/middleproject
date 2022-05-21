package middle.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import middle.service.ProductService;
import middle.service.ReviewService;
import middle.vo.ProductVO;
import middle.vo.ReviewVO;

public class ProNameSearchControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 상품이름으로 검색
		String pname = request.getParameter("productName");
		
		ProductService service = new ProductService();
		ProductVO vo = service.productName(pname);
		
		request.setAttribute("product", vo);
		
		ReviewService rservice = new ReviewService();
		List<ReviewVO> rvo = rservice.productReview(pname);
		
		request.setAttribute("review", rvo);
		
		request.getRequestDispatcher("result/ProDetailOut.jsp").forward(request, response);
	}

}
