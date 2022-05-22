package middle.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import middle.service.ReviewService;
import middle.vo.ReviewVO;

public class ReviewControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 리뷰게시판
		
		// 리뷰데이터 가져오기
		ReviewService service = new ReviewService();
		List<ReviewVO> list = service.reviewList();
		

		request.setAttribute("review", list);
		
		
		
		request.getRequestDispatcher("result/ReviewOut.jsp").forward(request, response);
		
	}

}
