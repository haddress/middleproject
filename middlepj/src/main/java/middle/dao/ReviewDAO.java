package middle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import middle.vo.ReviewVO;
import middle.vo.UserOrderVO;

public class ReviewDAO extends DAO {
	
	Connection conn;
	Statement stmt;
	PreparedStatement psmt;
	ResultSet rs;
	
	// 리뷰쓰기
	public void insertReview(ReviewVO review) {
		conn = getConnect();
		String sql = "insert into review "
				+ "values(review_seq.NEXTVAL, ?, ?, ?, ?, ?, sysdate, ?, ?)";
		try {
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, review.getProductName());
			psmt.setString(2, review.getId());
			psmt.setString(3, review.getReviewPass());
			psmt.setString(4, review.getReviewTitle());
			psmt.setString(5, review.getReviewContent());
			psmt.setString(6, review.getReviewImg());
			psmt.setInt(7, review.getReviewStar());
			
			int r = psmt.executeUpdate();
			System.out.println(r + "건 등록");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
	}
	
	// 로그인 한 사용자가 구매한 상품 조회
	public List<UserOrderVO> searchOrder(String uid) {
		conn = getConnect();
		List<UserOrderVO> list = new ArrayList<UserOrderVO>();
		String sql = "select product_name, product_code from user_order where id = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, uid);
			rs = psmt.executeQuery();
			while(rs.next()) {
				UserOrderVO vo = new UserOrderVO();
				vo.setProductCode(rs.getInt("product_code"));
				vo.setProductName(rs.getString("product_name"));
				
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return list;
		
	}
	
	// 리뷰수정
	public void modifyReview(ReviewVO review) {
		conn = getConnect();
		String sql = "update review "
				+ "set review_title = ?, review_content = ?, review_img = ?, review_star = ? "
				+ "where review_code = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, review.getReviewTitle());
			psmt.setString(2, review.getReviewContent());
			psmt.setString(3, review.getReviewImg());
			psmt.setInt(4, review.getReviewStar());
			psmt.setInt(5, review.getReviewCode());
			
			rs = psmt.executeQuery();
			if(rs.next()) {
				review.setReviewCode(rs.getInt("review_code"));
				review.setReviewTitle(rs.getString("review_title"));
				review.setReviewContent(rs.getString("review_content"));
				review.setReviewImg(rs.getString("review_img"));
				review.setReviewStar(rs.getInt("review_star"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		
	}
	
	// 리뷰삭제
	public void deleteReview(int reviewCode) {
		conn = getConnect();
		String sql = "delete from review where review_code = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, reviewCode);
			int r = psmt.executeUpdate();
			System.out.println(r + "건 삭제");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		
	}
	
	
//	// 리뷰리스트
//	public List<ReviewVO> reviewList() {
//		conn = getConnect();
//		List<ReviewVO> list = new ArrayList<ReviewVO>();
//		String sql = "select rownum, rv.* from (select * from review order by review_code desc) rv;";
//		try {
//			psmt = conn.prepareStatement(sql);
//			rs = psmt.executeQuery();
//			while(rs.next()) {
//				ReviewVO vo = new ReviewVO();
//				vo.setReviewCode(rs.getInt("review_code"));
//				vo.setProductName(rs.getString("product_name"));
//				vo.setId(rs.getString("writer"));
//				vo.setReviewPass(rs.getString("review_pw"));
//				vo.setReviewTitle(rs.getString("review_title"));
//				vo.setReviewContent(rs.getString("review_content"));
//				vo.setReviewDate(rs.getString("review_date"));
//				vo.setReviewImg(rs.getString("review_img"));
//				vo.setReviewStar(rs.getInt("review_star"));
//				
//				list.add(vo);
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			disconnect();
//		}
//		return list;
//		
//	}
	
	// 리뷰 상세보기
	public ReviewVO reviewDetail(int reviewCode) {
		conn = getConnect();
		String sql = "select * from review where review_code = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, reviewCode);
			rs = psmt.executeQuery();
			if (rs.next()) {
				ReviewVO vo = new ReviewVO();
				vo.setReviewCode(rs.getInt("review_code"));
				vo.setProductName(rs.getString("product_name"));
				vo.setId(rs.getString("writer"));
				vo.setReviewPass(rs.getString("review_pw"));
				vo.setReviewTitle(rs.getString("review_title"));
				vo.setReviewContent(rs.getString("review_content"));
				vo.setReviewDate(rs.getString("review_date"));
				vo.setReviewImg(rs.getString("review_img"));
				vo.setReviewStar(rs.getInt("review_star"));
				return vo;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return null;
		
	}
	
	// 해당 상품 리뷰리스트
	public List<ReviewVO> productReview(String productName) {
		conn = getConnect();
		List<ReviewVO> list = new ArrayList<ReviewVO>();
		String sql = "select * from review where product_name = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, productName);
			rs = psmt.executeQuery();
			while (rs.next()) {
				ReviewVO vo = new ReviewVO();
				vo.setReviewCode(rs.getInt("review_code"));
				vo.setProductName(rs.getString("product_name"));
				vo.setId(rs.getString("writer"));
				vo.setReviewPass(rs.getString("review_pw"));
				vo.setReviewTitle(rs.getString("review_title"));
				vo.setReviewContent(rs.getString("review_content"));
				vo.setReviewDate(rs.getString("review_date"));
				vo.setReviewImg(rs.getString("review_img"));
				vo.setReviewStar(rs.getInt("review_star"));
				
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return list;
	}
	
	// 리뷰게시판 페이징
	public List<ReviewVO> getReviewList(int pageNum, int amount) {
		conn = getConnect(); // 연결
		List<ReviewVO> list = new ArrayList<ReviewVO>();
		String sql = "select * "
				+ "from (select rownum rn, "
				+ "        rv.* "
				+ "        from(select * from review order by review_code desc) rv) "
				+ "where rn > ? and rn <= ?";
		try {
			psmt = conn.prepareStatement(sql); // sql준비
			psmt.setInt(1, (pageNum - 1) * amount);
			psmt.setInt(2, pageNum * amount);
			rs = psmt.executeQuery(); // sql문 실행
			while(rs.next()) {
				// 한바퀴 회전당 VO를 하나씩 생성
				ReviewVO vo = new ReviewVO();
				vo.setReviewCode(rs.getInt("review_code"));
				vo.setProductName(rs.getString("product_name"));
				vo.setId(rs.getString("writer"));
				vo.setReviewPass(rs.getString("review_pw"));
				vo.setReviewTitle(rs.getString("review_title"));
				vo.setReviewContent(rs.getString("review_content"));
				vo.setReviewDate(rs.getString("review_date"));
				vo.setReviewImg(rs.getString("review_img"));
				vo.setReviewStar(rs.getInt("review_star"));
				
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return list;
	}
	
	// 리뷰게시판 전체 게시글 수
	public int getTotal() {
		conn = getConnect();
		int result = 0;
		String sql = "select count(*) as total from review";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt("total");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return result;
	}
	
	// 해당상품 리뷰게시판 페이징
	public List<ReviewVO> getPdReviewList(int pageNum, int amount, String productName) {
		conn = getConnect(); // 연결
		List<ReviewVO> list = new ArrayList<ReviewVO>();
		String sql = "select * "
				+ "from (select rownum rn, "
				+ "        rv.* "
				+ "        from(select * from review order by review_code desc) rv) "
				+ "where rn > ? and rn <= ? and product_name=?";
		try {
			psmt = conn.prepareStatement(sql); // sql준비
			psmt.setInt(1, (pageNum - 1) * amount);
			psmt.setInt(2, pageNum * amount);
			psmt.setString(3, productName);
			rs = psmt.executeQuery(); // sql문 실행
			while(rs.next()) {
				// 한바퀴 회전당 VO를 하나씩 생성
				ReviewVO vo = new ReviewVO();
				vo.setReviewCode(rs.getInt("review_code"));
				vo.setProductName(rs.getString("product_name"));
				vo.setId(rs.getString("writer"));
				vo.setReviewPass(rs.getString("review_pw"));
				vo.setReviewTitle(rs.getString("review_title"));
				vo.setReviewContent(rs.getString("review_content"));
				vo.setReviewDate(rs.getString("review_date"));
				vo.setReviewImg(rs.getString("review_img"));
				vo.setReviewStar(rs.getInt("review_star"));
				
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return list;
	}
	
	// 해당상품 리뷰게시판 게시글 수
	public int getPdTotal(String productName) {
		conn = getConnect();
		int result = 0;
		String sql = "select count(*) as total from review where product_name=?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, productName);
			rs = psmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt("total");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return result;
	}
}
