package middle.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import middle.service.ReviewService;
import middle.vo.ReviewVO;

public class AdminReviewListControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub1
		ReviewService service = new ReviewService();
		List<ReviewVO> list = service.reviewList();
		
		request.setAttribute("list", list);
		
		 request.getRequestDispatcher("/result/adminReviewListOutput.jsp").forward(request, response);
	}

}
