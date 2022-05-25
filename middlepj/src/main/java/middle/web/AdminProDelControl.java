package middle.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JB.AdminService;

public class AdminProDelControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String productCode = request.getParameter("productCode");
		
		
		AdminService service = new AdminService();
		service.adminProDel(productCode);
		
		response.sendRedirect("/middlepj2/listProduct.do");
	
	}

}
