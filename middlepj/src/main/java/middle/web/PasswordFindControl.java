package middle.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import middle.service.Markservice;
import middle.vo.UserVO1;

public class PasswordFindControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String id = request.getParameter("id");
	
	
	Markservice service = new Markservice();
	
	UserVO1 vo = service.ussear(id);
	request.setAttribute("vo", vo);	
	request.getRequestDispatcher("result/pwfindresult.jsp").forward(request, response);	
	}

}
