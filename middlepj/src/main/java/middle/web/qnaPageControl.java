package middle.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import middle.service.qnaService;
import middle.vo.PagingVO;
import middle.vo.qnaVO;

public class qnaPageControl implements Control{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int pageNum = 1;
		int amount = 9;
		
		// 페이지 번호 클릭 시
				if(request.getParameter("pageNum") != null && request.getParameter("amount") != null) {
					pageNum = Integer.parseInt(request.getParameter("pageNum"));
					amount = Integer.parseInt(request.getParameter("amount"));
				}
				
				// 문의글 데이터 가져오기
				qnaService pageservice = new qnaService();
				List<qnaVO> list = pageservice.getQnaList(pageNum, amount);
				
				int total = pageservice.getTotal();
				PagingVO pageVO = new PagingVO(pageNum, amount, total);
				
				// 페이지네이션
				request.setAttribute("pageVO", pageVO);

				// 리뷰게시판 데이터
				request.setAttribute("qnapage", list);
				
				request.getRequestDispatcher("view/qna.jsp").forward(request, response);
				
			}

}
