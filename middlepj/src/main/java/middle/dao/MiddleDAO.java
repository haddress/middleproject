package middle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import middle.vo.UserVO;

//1
public class MiddleDAO extends DAO{
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	public UserVO loginTest (String id ) {
		String sql = "select * from user_info where id = ? ";
		
		try {
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if(rs.next()) {
			UserVO vo = new UserVO();
			vo.setUid(rs.getString("id"));
			vo.setUpw(rs.getString("pw"));
			vo.setUname(rs.getString("name"));
			
			return vo;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return null;
	} 
}
