package middle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import middle.vo.ReviewVO;

public class ReviewDAO extends DAO {
	
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	
	// 리뷰쓰기
	public void insertReview(ReviewVO review) {
		conn = getConnect();
		String sql = "";
	}
	
	// 리뷰수정
	
	// 리뷰삭제
	
	// 리뷰리스트
	
	// 

}
