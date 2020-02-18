package lastdto;

public class sickSearchDTO {
	private String sicName;		//이름
	private String sicPhone;	//전화번호
	private String rqstTy; // 진료타입

	// 생성자
	public sickSearchDTO() {
		super();
	}
	

	public sickSearchDTO(String sicName, String sicPhone, String rqstTy) {
		super();
		this.sicName = sicName;
		this.sicPhone = sicPhone;
		this.rqstTy = rqstTy;
	}


	public String getSicName() {
		return sicName;
	}

	public void setSicName(String sicName) {
		this.sicName = sicName;
	}

	public String getSicPhone() {
		return sicPhone;
	}

	public void setSicPhone(String sicPhone) {
		this.sicPhone = sicPhone;
	}

	public String getRqstTy() {
		return rqstTy;
	}

	public void setRqstTy(String rqstTy) {
		this.rqstTy = rqstTy;
	}
	

	
}