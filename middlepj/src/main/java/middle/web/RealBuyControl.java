package middle.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import middle.service.Markservice;
import middle.vo.ProductVO;
import middle.vo.UserOrderVO;
import middle.vo.UserVO1;

public class RealBuyControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Markservice service = new Markservice();
		HttpSession session = request.getSession(true);
		String Uid = (String) session.getAttribute("Uid");
		int paypcode = Integer.parseInt(request.getParameter("paycode"));
		String productname = request.getParameter("productname");
		int amount = Integer.parseInt(request.getParameter("amount"));
		int productprice = Integer.parseInt(request.getParameter("productprice"));
		String address = request.getParameter("address");
		String ordername = request.getParameter("uordername");
		String utel = request.getParameter("uordertel");
		int pamount = Integer.parseInt(request.getParameter("productamount"));
		PrintWriter writer = response.getWriter();

		UserOrderVO voo = new UserOrderVO();
		voo.setUid(Uid);
		voo.setProductCode(paypcode);
		voo.setProductPrice(productprice);
		voo.setProductName(productname);
		voo.setAmount(amount);
		voo.setUorderName(ordername);
		voo.setUorderAddress(address);
		voo.setUorderTel(utel);

		if (pamount <= 0) {
			writer.println("<script>alert('상품품절'); location.href='index.jsp';</script>");
			writer.close();

		}
		service.Userbuy(voo);
		service.amount(paypcode, amount);
		request.getRequestDispatcher("result/buyoutput.jsp").forward(request, response);

	}

}
