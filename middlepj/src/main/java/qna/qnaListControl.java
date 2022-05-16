package qna;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class qnaListControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		qnaService service = new qnaService();
		List<qnaVO> list = service.qnaList();
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("qna/qna").forward(request, response);
	}
	
}
