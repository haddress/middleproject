package mok;

import java.util.List;



public class Markservice {
	ModiFyDAO dao;
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
	
	
	
}
