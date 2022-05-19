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
		String sql = "insert into review "
				+ "(review_code, order_code, product_code, writer, review_pw, review_title, review_content, review_date, review_img, review_star) "
				+ "select ?, ?, ?, ?, ?, ?, ?, sysdate, ?, ? "
				+ "from user_order "
				+ "where id = 'user2'";
	}
	
	// 리뷰수정
	
	// 리뷰삭제
	
	// 리뷰리스트
	
	// 

}
