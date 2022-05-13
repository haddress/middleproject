package middle.product;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import middle.web.Control;

@WebServlet("/productlist")
public class ProductListControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "hyunju/ListOutput.jsp";
		
		String category = request.getParameter("category");
		String job = request.getParameter("job");
				
				
		
		ProductService service = new ProductService();
		List<ProductVO> list = service.productList(null);
	}

}
