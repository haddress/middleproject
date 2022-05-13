package mok;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import middle.dao.DAO;

public class ModiFyDAO extends DAO {
	 Connection conn; //sql 연결
	 ResultSet rs;
	 PreparedStatement psmt; // 쿼리실행
	public void updateUser(UserVO vo) {
		conn = getConnect();
		String sql = "update user_info\r\n"
				+ "set pw=?,tel=?,email=?,address=?\r\n"
				+ "where id = ? ";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getUpw());
			psmt.setString(2, vo.getUtel());
			psmt.setString(3, vo.getUemail());
			psmt.setString(4, vo.getUadress());
			psmt.setString(5, vo.getUid());
			psmt.executeUpdate();			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void deleteUser(String id) {
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
	
	

	
	public List<UserOrderVO> Orderlist(){
		conn = getConnect();
		List<UserOrderVO> list = new ArrayList<UserOrderVO>();
		try {
			psmt = conn.prepareStatement("select * from member order by id");
			rs= psmt.executeQuery();
			while(rs.next()) {
				UserOrderVO vo = new UserOrderVO();
				vo.setUorderName(rs.getString(""));

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
