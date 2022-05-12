package middle.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class UserSearchControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = null;

		String id = request.getParameter("id");
		String job = request.getParameter("job");
		
		if (job.equals("modify")) {
			path = "result/modifyOutPut";
		} 

		request.getRequestDispatcher(path).forward(request, response);

	}

}
