package middle.web;

import java.io.IOException;
import java.util.jar.Attributes.Name;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import middle.service.Markservice;



public class ModifyUserControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String passwd = request.getParameter("passwd");
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String press = request.getParameter("press");
		int price = Integer.parseInt(request.getParameter("price"));
		
		UserVO vo = new UserVO
		Markservice() service = new Markservice();
		service.modifyBook(vo);
		
		request.setAttribute("title", title);
		
		request.getRequestDispatcher("result/modifyOutput.jsp").forward(request, response);
	}
		
	}

}
