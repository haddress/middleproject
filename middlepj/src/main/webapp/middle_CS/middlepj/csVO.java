package middlepj;

public class csVO {
	private int qnaNo;
	private String userId;
	private String qnaWriter;
	private String productCode;
	private String qnaDate;
	private String qnaContent;
	private int replyNo;
	private String replyWriter;
	private String replyContent;
	
	public csVO(int qnaNo, String userId, String qnaWriter, String productCode, String qnaDate, String qnaContent,
			int replyNo, String replyWriter, String replyContent) {
		super();
		this.qnaNo = qnaNo;
		this.userId = userId;
		this.qnaWriter = qnaWriter;
		this.productCode = productCode;
		this.qnaDate = qnaDate;
		this.qnaContent = qnaContent;
		this.replyNo = replyNo;
		this.replyWriter = replyWriter;
		this.replyContent = replyContent;
	}

	public int getQnaNo() {
		return qnaNo;
	}

	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getQnaWriter() {
		return qnaWriter;
	}

	public void setQnaWriter(String qnaWriter) {
		this.qnaWriter = qnaWriter;
	}

	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	public String getQnaDate() {
		return qnaDate;
	}

	public void setQnaDate(String qnaDate) {
		this.qnaDate = qnaDate;
	}

	public String getQnaContent() {
		return qnaContent;
	}

	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}

	public int getReplyNo() {
		return replyNo;
	}

	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}

	public String getReplyWriter() {
		return replyWriter;
	}

	public void setReplyWriter(String replyWriter) {
		this.replyWriter = replyWriter;
	}

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	@Override
	public String toString() {
		return "csVO [qnaNo=" + qnaNo + ", userId=" + userId + ", qnaWriter=" + qnaWriter + ", productCode="
				+ productCode + ", qnaDate=" + qnaDate + ", qnaContent=" + qnaContent + ", replyNo=" + replyNo
				+ ", replyWriter=" + replyWriter + ", replyContent=" + replyContent + "]";
	}
	
	
}
