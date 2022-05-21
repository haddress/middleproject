package middle.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import middle.service.ReviewService;
import middle.vo.ReviewVO;

public class ReviewDeleteControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("리뷰 수정, 삭제 컨트롤");
		
		int rcode = Integer.parseInt(request.getParameter("rcode"));
		
		String modify = request.getParameter("modify");
		String delete = request.getParameter("delete");
		
		if(delete == null || "null".equals(delete)) { // 수정으로
			
			ReviewService service = new ReviewService();
			ReviewVO vo = service.reviewDetail(rcode);
			
			request.setAttribute("review", vo);
			
			request.getRequestDispatcher("view/reviewModify.jsp").forward(request, response);
			
			
		} else { // 삭제
			
			ReviewService service = new ReviewService();
			service.reviewDelete(rcode);
			
			request.getRequestDispatcher("result/reviewDelete.jsp").forward(request, response);
			
		}
		
		
	}

}
