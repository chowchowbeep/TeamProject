package dto;

public class mediInfoDTO {
	private int rqstNo; // 진료신청번호
	private String mcttStt; // 진료상태

	// 생성자
	public mediInfoDTO() {
		super();
	}

	public mediInfoDTO(int rqstNo, String mcttStt) {
		super();
		this.rqstNo = rqstNo;
		this.mcttStt = mcttStt;
	}

	public int getRqstNo() {
		return rqstNo;
	}

	public void setRqstNo(int rqstNo) {
		this.rqstNo = rqstNo;
	}

	public String getMcttStt() {
		return mcttStt;
	}

	public void setMcttStt(String mcttStt) {
		this.mcttStt = mcttStt;
	}
	
	

}
