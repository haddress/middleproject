package middle.service;

import java.util.List;

import middle.dao.qnaDAO;
import middle.vo.qnaVO;

public class qnaService {
	qnaDAO qnadao = new qnaDAO();
	
	//문의글 전체 리스트
	public List<qnaVO> qnaList() {
		return qnadao.getList();
	}
	
	//문의번호 클릭시 문의글 상세보기
	public qnaVO qnaDetail(int qnaNo) {
		return qnadao.qnaDetail(qnaNo);
	}
	
	//문의글 작성
	public void addQna(qnaVO qna) {
		qnadao.addQna(qna);
	}
	
	//문의글 삭제
	public void deleteQna(int qnaNo) {
		qnadao.deleteQna(qnaNo);
	}
	
	//문의글 수정
	public void updateQna(qnaVO qnaNo) {
		qnadao.updateQna(qnaNo);
	}
	
	//문의글 페이징
	public List<qnaVO> getQnaList(int pageNum, int amount) {
		return qnadao.getQnaList(pageNum, amount);
	}
	
	//문의글 전체 게시글 수
	public int getTotal() {
		return qnadao.getTotal();
	}
}
