package middle.service;

import java.util.List;

import middle.dao.qnaDAO;
import middle.vo.qnaVO;

public class qnaService {
	qnaDAO qnadao = new qnaDAO();
	
	public List<qnaVO> qnaList() {
		return qnadao.getList();
	}
	
	public void writeQna(qnaVO qna) {
		qnadao.writeQna(qna);
	}
}
