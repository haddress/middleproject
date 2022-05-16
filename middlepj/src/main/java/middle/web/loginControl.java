package middle.web;

import java.io.IOException;
import java.security.Provider.Service;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import middle.vo.UserVO1;

public class loginControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Uid = request.getParameter("Uid");
		String Upw = request.getParameter("Upw");
		
		UserVO1 vo = new UserVO1();
		vo.setUid(Uid);
		vo.setUpw(Upw);
		
		
	}

}
