package middle.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import middle.service.qnaService;
import middle.vo.qnaVO;

public class AdminQnAListControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		qnaService service = new qnaService();
		List<qnaVO> list = service.qnaList();
		
		request.setAttribute("list", list);
		
		 request.getRequestDispatcher("/result/adminQnAListOutput.jsp").forward(request, response);
	}

}
