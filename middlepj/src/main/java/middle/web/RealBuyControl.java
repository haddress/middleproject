package middle.web;

import java.io.IOException;

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
		
		
		
		UserOrderVO voo = new UserOrderVO();
		voo.setUid(Uid);
		voo.setProductCode(paypcode);
		voo.setProductPrice(productprice);
		voo.setProductName(productname);
		voo.setAmount(amount);
		voo.setUorderName(ordername);
		voo.setUorderAddress(address);
		voo.setUorderTel(utel);
		ProductVO po = new ProductVO();
		if(po.getProductAmount()<=0) {
			request.setAttribute("error", "상품이 품절되었습니다11");
			request.getRequestDispatcher("result/ProDetailOut.jsp").forward(request, response);
			return;
			}
			service.Userbuy(voo);
			service.amount(paypcode, amount);
			request.getRequestDispatcher("result/buyoutput.jsp").forward(request, response);
		
	}

}
