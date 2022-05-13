package mok;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class ModifyControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Uid = request.getParameter("Uid");
		String Upw = request.getParameter("Upw");
		String Uname = request.getParameter("Uname");
		String Utel = request.getParameter("Utel");
		String Uemail = request.getParameter("Uemail");
		String Uadress = request.getParameter("Uadress");
		
		UserVO1 vo = new UserVO1();
		vo.setUid(Uid);
		vo.setUname(Upw);
		vo.setUname(Uname);
		vo.setUname(Utel);
		vo.setUname(Uemail);
		vo.setUname(Uadress);
		
				
		Markservice service = new Markservice();
		service.Userupdate(vo);
		request.setAttribute("Uid", Uid);
				
		
		request.getRequestDispatcher("result/modifyOutput.jsp").forward(request, response);
	}

}
