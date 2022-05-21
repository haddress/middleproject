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
   public void Userdelete(String Uid) {
      dao.deleteUser(Uid);
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
   public UserVO1 findUser(String Uid) {
      return dao.userFind(Uid);
   }
   public void Userbuy(UserOrderVO vo) {
	   dao.BuyUser(vo);
   }
   public void RealBuy(UserOrderVO vo) {
	   dao.BuyReal(vo);
   }
   public void refund(String id, int code) {
	   dao.fundre(id,code);
   }
   public int check(String id, String pw) {
	  return dao.ucheck(id,pw);
   }
   public void amount(int pcode, int a) {
	   dao.mount(pcode, a);
   }
}