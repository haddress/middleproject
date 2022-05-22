package middle.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import middle.service.qnaService;
import middle.vo.qnaVO;

public class qnaDetailControl implements Control{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	String path = "";
	int qnaNo = Integer.parseInt(request.getParameter("qnaNo"));
	String job = request.getParameter("job");
	
	qnaService dservice = new qnaService();
	qnaVO detail = dservice.qnaDetail(qnaNo);

	

	request.setAttribute("qnadetail", detail);
	request.getRequestDispatcher("view/qnaDetail.jsp").forward(request, response);
	
	if(job.equals("update")) {
		path = "view/qnaUpdate.jsp";
	}
	}
}
