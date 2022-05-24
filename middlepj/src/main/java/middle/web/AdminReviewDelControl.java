package middle.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JB.AdminService;
import middle.vo.ReviewVO;
import middle.vo.qnaVO;

public class AdminReviewDelControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String reviewCode = request.getParameter("reviewCode");

		ReviewVO vo = new ReviewVO();
		vo.setReviewCode((Integer.parseInt(reviewCode)));
		

		AdminService service = new AdminService();
		service.adminReviewDel(reviewCode);

		request.setAttribute("remove", reviewCode);

		request.getRequestDispatcher("view/adminForBoard.jsp").forward(request, response);
	}

}
