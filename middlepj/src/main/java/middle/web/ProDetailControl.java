package middle.web;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import middle.service.ProductService;
import middle.service.ReviewService;
import middle.vo.PagingVO;
import middle.vo.ProductVO;
import middle.vo.ReviewVO;

public class ProDetailControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 상품 한 건 상세보기
		
		int pcode = Integer.parseInt(request.getParameter("productCode"));
		
		ProductService service = new ProductService();
		ProductVO vo = service.DetailProduct(pcode);
		
		if (vo == null) {
			request.setAttribute("result", "상품을 찾을 수 없습니다.");
		}
		request.setAttribute("product", vo);
		
		
		// 해당 상품 리뷰
		String pname = request.getParameter("productName");
		
		ReviewService rservice = new ReviewService();
		List<ReviewVO> rvo = rservice.productReview(pname);
		
		int total = rservice.getPdTotal(pname);
		
		request.setAttribute("total", total);
		
		request.setAttribute("review", rvo);
		
		request.getRequestDispatcher("result/ProDetailOut.jsp").forward(request, response);
		
	}

}
