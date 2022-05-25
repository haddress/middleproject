package middle.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import JB.AdminService;
import middle.vo.UserVO1;

public class idcheckControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/json;charset=UTF-8");
		AdminService service = new AdminService();
		 List<UserVO1> list = service.Userlist();
		 
		 Gson gson = new GsonBuilder().create();
		 response.getWriter().print(gson.toJson(list));

	}

}
