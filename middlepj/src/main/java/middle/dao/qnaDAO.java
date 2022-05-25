package middle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import middle.vo.qnaVO;

public class qnaDAO extends DAO{
	
	Connection conn;
	ResultSet rs;
	 PreparedStatement psmt; 
	 
	 //문의글 전체리스트
	public List<qnaVO> getList() {
		conn = getConnect();
		getConnect();
		List<qnaVO> list = new ArrayList<qnaVO> ();

		try {
			psmt = conn.prepareStatement("select*from qna order by qna_no desc");
			rs = psmt.executeQuery();
			while(rs.next()) {
				qnaVO qnavo = new qnaVO();
				qnavo.setQnaCategory(rs.getString("qna_category"));
				qnavo.setQnaNo(rs.getInt("qna_no"));
				qnavo.setId(rs.getString("id"));
				qnavo.setQnaTitle(rs.getString("qna_title"));
				qnavo.setQnaContent(rs.getString("qna_content"));
				qnavo.setQnaDate(rs.getString("qan_date"));
				qnavo.setQnaPw(rs.getString("qna_pw"));
				list.add(qnavo);

			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
		return list;
	}
	
	//문의번호 클릭시 문의글 상세보기
		public qnaVO qnaDetail(int qnaNo) {
			conn = getConnect();
			getConnect();
			String sql = "select * from qna where qna_no = ?";
			
			try {
				psmt = conn.prepareStatement(sql);
				psmt.setInt(1, qnaNo);
				rs = psmt.executeQuery();
				if(rs.next()) {
					qnaVO vo = new qnaVO();
					vo.setQnaNo(rs.getInt("qna_no"));
					vo.setId(rs.getString("id"));
					vo.setQnaTitle(rs.getString("qna_title"));
					vo.setQnaContent(rs.getString("qna_content"));
					vo.setQnaDate(rs.getString("qan_date"));
					return vo;
					}
				}catch(SQLException e) {
					e.printStackTrace();
				}finally {
					disconnect();
				}
			return null;
		}
	
	//문의글쓰기
	public void addQna(qnaVO qna) {
		conn = getConnect();
		getConnect();
		String sql = "insert into qna (qna_no, qna_category, id, qna_pw, qna_title, qna_content, qan_date)\r\n"
				+ "values (qna_no_seq.nextval,?, ?, ?, ?, ?, sysdate )";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, qna.getQnaCategory());
			psmt.setString(2, qna.getId());
			psmt.setString(3, qna.getQnaPw());
			psmt.setString(4, qna.getQnaTitle());
			psmt.setString(5, qna.getQnaContent());
			
			int r = psmt.executeUpdate();
			System.out.println(r + "건 입력되었습니다.");
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
	}
	
	//문의글 삭제
	public void deleteQna(int qnaNo) {
		conn = getConnect();
		getConnect();
		String sql = "delete from qna where qna_no = ?";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, qnaNo);
			
			int r = psmt.executeUpdate();
			System.out.println(r + "건 삭제되었습니다.");
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
	}
	
	//문의글 수정
	public void updateQna(qnaVO qnaNo) {
		conn = getConnect();
		getConnect();
		String sql = "update qna \r\n"
				+ "set qna_title = ?, qna_content=?\r\n"
				+ "where qna_no=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, qnaNo.getQnaTitle());
			psmt.setString(2, qnaNo.getQnaContent());
			psmt.setInt(3, qnaNo.getQnaNo());
			
			int r = psmt.executeUpdate();
			System.out.println(r + "건 수정되었습니다");
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
	}
	
	//문의글 페이징
	public List<qnaVO> getQnaList(int pageNum, int amount) {
		conn = getConnect();
		getConnect();
		List<qnaVO> pagelist = new ArrayList<qnaVO> ();
		String sql = "select * from (select rownum rn, \r\n"
				+ "rv.* \r\n"
				+ "from (select * from qna order by qna_no desc) rv)\r\n"
				+ "where rn>? and rn<=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, (pageNum - 1) * amount);
			psmt.setInt(2, pageNum * amount);
			rs = psmt.executeQuery();
			while(rs.next()) {
				qnaVO qnavo = new qnaVO();
				qnavo.setQnaCategory(rs.getString("qna_category"));
				qnavo.setId(rs.getString("id"));
				qnavo.setQnaNo(rs.getInt("qna_no"));
				qnavo.setQnaTitle(rs.getString("qna_title"));
				qnavo.setQnaContent(rs.getString("qna_content"));
				qnavo.setQnaDate(rs.getString("qan_date"));
				qnavo.setQnaPw(rs.getString("qna_pw"));
				pagelist.add(qnavo);

			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
		return pagelist;
	}
	
	//문의글 전체 게시글 수
	public int getTotal() {
		conn = getConnect();
		getConnect();
		int result = 0;
		String sql = "select count(*) as total from qna";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt("total");
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
		return result;
	}
}
