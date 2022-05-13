package mok;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class ModifyControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Uid = request.getParameter("Uid");
		String Uname = request.getParameter("Upw");
		String author = request.getParameter("author");
		String press = request.getParameter("press");
		int price = Integer.parseInt(request.getParameter("price"));
		
		UserVO vo = new UserVO();
		vo.setUid(Uid);

		
				
		Markservice service = new Markservice();
		service.Userupdate(vo);
		request.setAttribute("Uid", Uid);
				
		
		request.getRequestDispatcher("result/modifyOutput.jsp").forward(request, response);
	}

}
