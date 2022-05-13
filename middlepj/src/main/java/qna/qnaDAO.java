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
				qnavo.setQnaDate(rs.getString("qna_date"));
				qnavo.setQnaNo(rs.getInt("qna_no"));
				qnavo.setQnaPw(rs.getString("qna_pw"));
				qnavo.setQnaCategory(rs.getString("qna_category"));
				qnavo.setProductCode(rs.getString("product_code"));
				qnavo.setQnaWrite(rs.getString("qna_writer"));
				qnavo.setQnaTitle(rs.getString("qna_title"));
				qnavo.setQnaContent(rs.getString("qna_content"));
				list.add(qnavo);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
		return list;
	}
}
