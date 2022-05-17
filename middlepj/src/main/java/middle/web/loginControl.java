package middle.web;

import java.io.IOException;
import java.security.Provider.Service;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import middle.service.Markservice;
import middle.vo.UserVO1;

public class loginControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Uid = request.getParameter("Uid");
		String Upw = request.getParameter("Upw");
		
		UserVO1 vo = new UserVO1();
		vo.setUid(Uid);
		vo.setUpw(Upw);		
		Markservice service = new Markservice();
		service.checkUser(Uid, Upw);
		int r = service.checkUser(Uid, Upw);
		System.out.println(r);
		if(r==1) {
		request.getRequestDispatcher("../result/loginoutput.jsp").forward(request, response);
		}else if(r==0) {
			request.getRequestDispatcher("../view/login.jsp").forward(request, response);
		//비번불일치
		}else if(r==-1) {
			request.getRequestDispatcher("../view/login.jsp").forward(request, response);
			//아이디없음
		}
		
	}

}
