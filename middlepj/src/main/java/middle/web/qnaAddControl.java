package middle.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import middle.service.qnaService;
import middle.vo.qnaVO;

public class qnaAddControl implements Control{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1
		String depart = "";
		
		HttpSession session = request.getSession();
		String Uid = (String) session.getAttribute("Uid");
		String category = request.getParameter("category");
		String title = request.getParameter("qnaTitle");
		String content = request.getParameter("qnaContent");
		String pw = request.getParameter("qnaPw");
		
		if(category.equals("상품")) {
			depart = "상품";
		} else if(category.equals("배송")) {
			depart = "배송";
		} else if(category.equals("기타")) {
			depart = "기타";
		}
		
		qnaVO vo = new qnaVO();
		vo.setId(Uid);
		vo.setQnaCategory(category);
		vo.setQnaTitle(title);
		vo.setQnaContent(content);
		vo.setQnaPw(pw);
		
		qnaService qnaaddservice = new qnaService();
		qnaaddservice.addQna(vo);
		
		request.setAttribute("vo", vo);
		request.setAttribute("id", Uid);
		
		request.getRequestDispatcher("view/addQnaOutput.jsp").forward(request, response);
		
	}

}
