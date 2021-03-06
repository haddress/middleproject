package middle.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import middle.service.ReviewService;
import middle.vo.PagingVO;
import middle.vo.ReviewVO;

public class ReviewControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 리뷰게시판
		
		// 화면전환시 조회하는 페이지 번호 & 화면에 그려질 데이커개수
		// 첫페이지
		int pageNum = 1;
		int amount = 12;
		
		// 페이지 번호 클릭 시
		if(request.getParameter("pageNum") != null && request.getParameter("amount") != null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
			amount = Integer.parseInt(request.getParameter("amount"));
		}
		
		// 리뷰데이터 가져오기
		ReviewService service = new ReviewService();
		List<ReviewVO> list = service.getReviewList(pageNum, amount);
		
		int total = service.getTotal();
		PagingVO pageVO = new PagingVO(pageNum, amount, total);
		
		// 페이지네이션
		request.setAttribute("pageVO", pageVO);

		// 리뷰게시판 데이터
		request.setAttribute("review", list);
		
		request.getRequestDispatcher("result/ReviewOut.jsp").forward(request, response);
		
	}

}
