package middle.service;

import java.util.List;

import middle.dao.ReviewDAO;
import middle.vo.ReviewVO;
import middle.vo.UserOrderVO;

public class ReviewService {
	
	ReviewDAO dao = new ReviewDAO();
	
	// 리뷰쓰기
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
	
	// 리뷰리스트
	public List<ReviewVO> reviewList() {
		return dao.reviewList();
		
	}
	
	// 리뷰 상세보기
	public ReviewVO reviewDetail(int reviewCode) {
		return dao.reviewDetail(reviewCode);
	}
	
	// 해당 상품 리뷰리스트
	public List<ReviewVO> productReview(String productName) {
		return dao.productReview(productName);
	}

	// 전체 리뷰데이터 갯수
	public int reviewCount() {
		return dao.reviewCount();
		
	}
}
