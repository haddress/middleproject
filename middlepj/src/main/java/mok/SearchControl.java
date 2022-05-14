package mok;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class SearchControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String path = null;

		String Uid = request.getParameter("Uid");
		String job = request.getParameter("job");
		// 조회 도서코드가 없을 경우 결과를 보여주는 페이지 지정.

		// 정상적인 처리가 진행될 경우 페이지 지정.
		if(job.equals("modify")) {
			path = "mok/modify.jsp";
		}else if(job.equals("delete")) {
			
			
			
			path = "mok/delete.jsp";
		}
		

		request.getRequestDispatcher(path).forward(request, response);

	}

}
