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
}
