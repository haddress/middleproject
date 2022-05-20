package middle.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import middle.service.Markservice;

public class RefundControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		int ocode = Integer.parseInt(request.getParameter("orderCode")); 
		
		Markservice service = new Markservice();
		service.refund(id, ocode);
		
		request.getRequestDispatcher("mypage.do").forward(request, response);
	
	}

}
