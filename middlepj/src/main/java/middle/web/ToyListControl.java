package middle.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import middle.service.ProductService;
import middle.vo.ProductVO;

public class ToyListControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ProductService service = new ProductService();
		List<ProductVO> list = service.toyList();
		
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("view/ProCateList.jsp").forward(request, response);
	}

}
