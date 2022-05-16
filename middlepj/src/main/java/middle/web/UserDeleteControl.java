package middle.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import middle.service.Markservice;
import middle.web.Control;

public class UserDeleteControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String code = request.getParameter("code");
		Markservice service = new Markservice();
		service.Userdelete(code);
		
		request.setAttribute("bookCode", code);
		request.getRequestDispatcher("result/removeOutput.jsp").forward(request, response);
	}

}
