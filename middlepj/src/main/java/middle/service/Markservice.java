package middle.service;

import java.util.List;

import middle.dao.ModiFyDAO;
import middle.vo.UserOrderVO;
import middle.vo.UserVO1;



public class Markservice {
	ModiFyDAO dao;
	
	public Markservice() {
		dao = new ModiFyDAO();
	}
	
	public void Userupdate(UserVO1 vo) {
		dao.updateUser(vo);
	}
	public void Userdelete(String id) {
		dao.deleteUser(id);
	}
	public UserVO1 ussear(String id) {
		return dao.searUs(id);
	}
	public List<UserOrderVO> listOrder(String id) {
		return dao.Orderlist(id);
	}
	public void addUser(UserVO1 vo) {
		dao.insertUser(vo);
	}
	public int checkUser(String id, String pw) {
		return dao.userCheck(id,pw);
	}

	
}
