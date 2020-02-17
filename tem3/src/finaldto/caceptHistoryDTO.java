package finaldto;

public class caceptHistoryDTO {
	private int rqstNo; // 신청번호
	private String sicId; // 회원id
	private String caceptStt; // 처리상태

	// 생성자
	public caceptHistoryDTO() {
		super();
	}

	public caceptHistoryDTO(int rqstNo, String sicId, String caceptStt) {
		super();
		this.rqstNo = rqstNo;
		this.sicId = sicId;
		this.caceptStt = caceptStt;
	}

	public int getRqstNo() {
		return rqstNo;
	}

	public void setRqstNo(int rqstNo) {
		this.rqstNo = rqstNo;
	}

	public String getSicId() {
		return sicId;
	}

	public void setSicId(String sicId) {
		this.sicId = sicId;
	}

	public String getCaceptStt() {
		return caceptStt;
	}

	public void setCaceptStt(String caceptStt) {
		this.caceptStt = caceptStt;
	}

}
