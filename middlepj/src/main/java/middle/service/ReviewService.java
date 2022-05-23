package middle.service;

import java.util.List;

import middle.dao.ReviewDAO;
import middle.vo.ReviewVO;
import middle.vo.UserOrderVO;

public class ReviewService {
	
	ReviewDAO dao = new ReviewDAO();
	
	// 리뷰쓰기1
	public void reviewInsert(ReviewVO review) {
		dao.insertReview(review);
	}
	
	// 로그인 한 사용자가 구매한 상품 조회
	public List<UserOrderVO> orderSearch(String uid) {
		return dao.searchOrder(uid);
		
	}
	
	// 리뷰수정
	public void reviewModify(ReviewVO review) {
		dao.modifyReview(review);
	}
	
	// 리뷰삭제
	public void reviewDelete(int reviewCode) {
		dao.deleteReview(reviewCode);
	}
	
//	// 리뷰리스트
//	public List<ReviewVO> reviewList() {
//		return dao.reviewList();
//		
//	}
	
	// 리뷰 상세보기
	public ReviewVO reviewDetail(int reviewCode) {
		return dao.reviewDetail(reviewCode);
	}
	
	// 해당 상품 리뷰리스트
	public List<ReviewVO> productReview(String productName) {
		return dao.productReview(productName);
	}
	
	// 리뷰게시판 페이징
	public List<ReviewVO> getReviewList(int pageNum, int amount) {
		return dao.getReviewList(pageNum, amount);
	}
	
	// 리뷰게시판 전체 게시글 수
	public int getTotal() {
		return dao.getTotal();
	}
	
	// 해당상품 리뷰게시판 페이징
	public List<ReviewVO> getPdReviewList(int pageNum, int amount, String productName) {
			return dao.getPdReviewList(pageNum, amount, productName);
	}
	
	// 해당상품 리뷰게시판 게시글 수
	public int getPdTotal(String productName) {
		return dao.getPdTotal(productName);
	}

}
