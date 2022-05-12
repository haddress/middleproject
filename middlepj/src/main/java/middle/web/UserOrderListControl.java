package middle.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import middle.service.Markservice;



public class UserOrderListControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Markservice service = new Markservice();
		List<userorder> list = service.orderList();

		request.setAttribute("list", list);
		
		request.getRequestDispatcher("result/mypage.jsp").forward(request, response);
		
		
	}

}
