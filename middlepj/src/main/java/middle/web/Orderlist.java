package middle.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import middle.service.Markservice;
import middle.vo.UserOrderVO;
import middle.web.Control;

public class Orderlist implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Uid = request.getParameter("Uid");
		HttpSession session=request.getSession();
		Uid = (String) session.getAttribute(Uid);
		Markservice service = new Markservice();
		List<UserOrderVO> list = service.listOrder(Uid);
		request.setAttribute("list", list);
		System.out.println(list.toString());
		request.getRequestDispatcher("/view/mypage.jsp").forward(request, response);
		
		
	}

}
