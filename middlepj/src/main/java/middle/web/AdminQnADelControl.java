package middle.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JB.AdminService;
import middle.service.ReviewService;
import middle.vo.ProductVO;
import middle.vo.ReviewVO;
import middle.vo.qnaVO;

public class AdminQnADelControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub


		
String qnaNo = request.getParameter("qnaNo");

qnaVO vo = new qnaVO();
vo.setQnaNo(Integer.parseInt(qnaNo));

AdminService service = new AdminService();
service.adminQnADel(qnaNo);

request.setAttribute("remove", qnaNo);

request.getRequestDispatcher("view/adminForBoard.jsp").forward(request, response);
		
		
		
		
	}

}
