package middle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import middle.dao.DAO;
import middle.vo.UserOrderVO;
import middle.vo.UserVO1;

public class ModiFyDAO extends DAO {
	Connection conn; // sql 연결
	ResultSet rs;
	PreparedStatement psmt; // 쿼리실행
	public void insertUser(UserVO1 vo) {
		conn=getConnect();
		String sql = "insert into user_info(id, pw, name, tel, email, address) "
				+ "values (?, ?, ?, ?, ?, ?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getUid());
			psmt.setString(2, vo.getUpw());
			psmt.setString(3, vo.getUname());
			psmt.setString(4, vo.getUtel());
			psmt.setString(5, vo.getUemail());
			psmt.setString(6, vo.getUaddress());

			
			int r = psmt.executeUpdate();
			System.out.println(r + "건 입력성공");
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally {
			disconnect();
			
		}
		
	}

	public UserVO1 searUs(String id) { // 회원정보
		String sql = "SELECT * FROM user_info WHERE id=?";
		conn = getConnect();
		UserVO1 vo = null;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if (rs.next()) {
				vo = new UserVO1();
				vo.setUpw(rs.getString("pw"));
				vo.setUname(rs.getString("name"));
				vo.setUtel(rs.getString("tel"));
				vo.setUemail(rs.getString("email"));
				vo.setUadress(rs.getString("address"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return vo;
	}

	public void updateUser(UserVO1 vo) { // 회원정보수정
		conn = getConnect();
		String sql = "update user_info\r\n" + "set pw=?,tel=?,email=?,address=?\r\n" + "where id = ? ";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getUpw());
			psmt.setString(2, vo.getUtel());
			psmt.setString(3, vo.getUemail());
			psmt.setString(4, vo.getUaddress());
			psmt.setString(5, vo.getUid());
			psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void deleteUser(String id) { // 탈퇴
		conn = getConnect();
		String sql = "delete user_info where id= ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
	}

	public List<UserOrderVO> Orderlist(String id) { //구매내역
		conn = getConnect();
		List<UserOrderVO> list = new ArrayList<UserOrderVO>();
		try {
			psmt = conn.prepareStatement("select user_order.order_code, user_order.order_name, user_order.order_tel, user_order.id\r\n"
					+ "from user_info , user_order  \r\n"
					+ "where user_info.id=user_order.id\r\n"
					+ "and user_info.id = ?");
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			while (rs.next()) {
				UserOrderVO vo = new UserOrderVO();
				vo.setUorderName(rs.getString("order_code"));
				vo.setUorderCode(rs.getString("order_name"));
				vo.setUorderTel(rs.getString("order_tel"));
				list.add(vo);
				System.out.println("성");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return list;
	}


}
