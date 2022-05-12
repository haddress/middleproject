package middle.service;

import middle.dao.MiddleDAO;
import middle.vo.UserVO;

//1
public class Markservice {
  MiddleDAO dao = new MiddleDAO();
  
  
  public UserVO loginTest(String id) {
	   return dao.loginTest(id);
  }
  
}
