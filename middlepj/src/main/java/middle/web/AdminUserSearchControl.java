package middle.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JB.AdminService;
import JB.AdminVO;
import middle.vo.UserVO1;

public class AdminUserSearchControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uid = null;
		uid = request.getParameter("Uid");
		String job = request.getParameter("job");

		String path = ""; // /result/adminSearchOutput.jsp
		
		if(job.equals("search")) {
			path = "view/adminSearch.jsp";
		} else if(job.equals("add")) {
			path = "view/adminAdd.jsp";
		}
		
		if (uid.isBlank()) {
			request.setAttribute("error", "아이디를 입력하세요.");
			request.getRequestDispatcher(path).forward(request, response);
			return;
		}
		
		AdminService service = new AdminService();
		UserVO1 vo = service.findUser(uid);
		
		request.setAttribute("", vo);
		if (job.equals("search")) {
			request.setAttribute("result", vo);
			path = "result/searchOutput.jsp";
		}

		request.getRequestDispatcher(path).forward(request, response);
	}

}
