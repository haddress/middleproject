package middle.product;

import java.io.IOException;
import java.lang.ModuleLayer.Controller;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProductController {
	HashMap<String, Controller> list = null;
	String charset = null;

	@Override
	public void init(ServletConfig config) throws ServletException {
		charset = config.getInitParameter("charset");
		list = new HashMap<String, Controller>();
		list.put("/CateList.do", new CateListControl());
	}

	// memberInsert.do를 읽어오기 위함
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding(charset);
		
		String url = req.getRequestURI(); // /P20220503/memberInsert.do
		String context = req.getContextPath(); // /P20220503을 context에 저장
		String path = url.substring(context.length()); // substring을 이용하여 url을 /memberInsert.do로 만들어줌

		Controller exeCon = list.get(path);
		exeCon.execute(req, resp);

	}

}
