package middle.web;

import java.io.IOException;
import java.util.HashMap;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FrontController")
public class FrontController extends HttpServlet {
	HashMap<String, Control> list = null;
	String charset = null;
	@Override
	public void init(ServletConfig config) throws ServletException {
		charset = config.getInitParameter("charset");
		list = new HashMap<String, Control>();
		
//		list.put("/productInsert.do", new ProductInsertControl());
//		list.put("/productList.do", new ProductListControl());
//		list.put("/detailProduct.do", new DetailProductControl());
//
//		list.put("/CateList.do", new CateListControl());	
		
		list.put("/delete.do", new UserDeleteControl());
		list.put("/modify.do", new UserModifyControl());
		list.put("/addUser.do", new addUserControl());
		list.put("/login.do", new loginControl());
		// json 관련 등록
//		list.put("/productListJson.do", new ProductListJson());
//		list.put("/productInsertJson.do", new ProductInsertJson());
		
		
		//관리자 메뉴입니다	
		list.put("/userList.do", new AdminUserListControl());
		list.put("/searchUser.do", new AdminUserSearchControl());
	}
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding(charset);
		String url = req.getRequestURI(); //사용자 URI정보 /P20220503/memberInsert.do
		String context = req.getContextPath(); // P20220503
		String path = url.substring(context.length()); // P20220503/memberInsert.do여기서 P20220503값을 잘라낸 뒷부분 저장
		
		Control exeCon = list.get(path); //해당되는밸류 리턴
		exeCon.execute(req, resp); //갖고있는메소드실행
	}
	
}
