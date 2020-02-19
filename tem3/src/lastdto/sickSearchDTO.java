package lastdto;

public class sickSearchDTO extends sickMemberDTO{

	private String rqstTy; // 진료타입
	
	// 생성자
	public sickSearchDTO() {
		super();
	}
	


	public String getRqstTy() {
		return rqstTy;
	}

	public void setRqstTy(String rqstTy) {
		this.rqstTy = rqstTy;
	}
	

	
}