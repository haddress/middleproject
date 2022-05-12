package middle.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import middle.vo.UserVO;


public class MemberInsertControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		UserVO vo = null;
	
	//Dispatcher 객체 forward.
	request.getRequestDispatcher("memberResult/memberInsertOutput.jsp").forward(request, response); // memberInsertOutput 페이지에 공유
	
	
	}

}
