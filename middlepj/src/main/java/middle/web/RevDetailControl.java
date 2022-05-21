package middle.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import middle.service.ReviewService;
import middle.vo.ReviewVO;

public class RevDetailControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 리뷰 상세보기
		
		int rcode = Integer.parseInt(request.getParameter("code"));
		
		ReviewService service = new ReviewService();
		ReviewVO vo = service.reviewDetail(rcode);
		
		if (vo == null) {
			request.setAttribute("result", "게시글을 찾을 수 없습니다.");
		}
		
		request.setAttribute("review", vo);
		
		request.getRequestDispatcher("result/ReviewDetailOut.jsp").forward(request, response);
		
	}

}
