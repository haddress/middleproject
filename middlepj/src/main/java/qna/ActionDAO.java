package qna;

import java.util.List;

public class ActionDAO {
	private qnaDAO qnaDAO;
	
	public ActionDAO() {
		ActionDAO actionDAO = new ActionDAO();
	}
	
	public List<qnaVO> getlist() {
		List<qnaVO> list = qnaDAO.getList();
		return list;
	}
}
