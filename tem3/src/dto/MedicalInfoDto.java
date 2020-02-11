package dto;

public class MedicalInfoDto { //진료정보 테이블
	private int rqstNo;		//진료신청번호
	private String mcttStt;	//진료상태
	
	//생성자
	public MedicalInfoDto() {
		super();
	}

	public MedicalInfoDto(int rqstNo, String mcttStt) {
		super();
		this.rqstNo = rqstNo;
		this.mcttStt = mcttStt;
	}

	//get set
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
