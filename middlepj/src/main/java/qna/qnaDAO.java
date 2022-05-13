package qna;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import middle.dao.DAO;

public class qnaDAO extends DAO{
	
	Connection conn;
	ResultSet rs;
	 PreparedStatement psmt; 
	
	public List<qnaVO> qnaList() {
		conn = getConnect();
		List<qnaVO> list = new ArrayList<qnaVO> ();
		try {
			psmt = conn.prepareStatement("select*from qna");
			rs = psmt.executeQuery();
			while(rs.next()) {
				qnaVO qnavo = new qnaVO();
			}
		}catch (SQLException e) {
			
		}finally {
			
		}
		return null;
	}
}
