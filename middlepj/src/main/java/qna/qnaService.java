package qna;

import java.util.List;

public class qnaService {
	qnaDAO qnadao = new qnaDAO();
	
	public List<qnaVO> qnaList() {
		return qnadao.getList();
	}
}
