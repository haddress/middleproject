package middle.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ModifyDAO extends DAO{
	
	public void updateMember(User user) { // 회원정보수정
		conn = getConnect();
		String sql = "update user_info\r\n"
				+ "set pw=?,tel=?,email=?,address=? \r\n"
				+ "where id = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, user.getpw());
			psmt.setString(2, user.gettel());
			psmt.setString(3, user.getemail());
			psmt.setString(4, user.getaddress());
			psmt.executeUpdate();			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void deleteUser(String id) { // 회원탈퇴
		conn = getConnect();
		String sql = "delete user_info where id= ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
	}
	
	
	
	public List<userorder> orderList(){ // 구매내역
		conn = getConnect();
		List<userorder> list = new ArrayList<userorder>();
		String sql = "select user_order.order_code, user_order.order_name, user_order.order_tel, user_order.id\r\n"
				+ "from user_info , user_order  \r\n"
				+ "where user_info.id=user_order.id\r\n"
				+ "and user_info.id = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, );
			rs= psmt.executeQuery();
			while(rs.next()) {
				userorder vo = new userorder();
				vo.setEmail(rs.getString("order_code"));
				vo.setId(rs.getString("id"));
				vo.setName(rs.getString("order_date"));
				vo.setPasswd(rs.getString("order_name"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return list;
	}
	

}