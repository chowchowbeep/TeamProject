package dto;

public class ApprenticeDoctorDto { //의사 테이블
	private int	artrNo;			//의사번호
	private String hosId;		//병원id
	private String artrName; 	//의사이름
	private String artrSub;		//진료과목
	
	//생성자
	public ApprenticeDoctorDto() {
		super();
	}
	public ApprenticeDoctorDto(int artrNo, String hosId, String artrName, String artrSub) {
		super();
		this.artrNo = artrNo;
		this.hosId = hosId;
		this.artrName = artrName;
		this.artrSub = artrSub;
	}
	
	public ApprenticeDoctorDto(int artrNo, String artrName, String artrSub) {
		super();
		this.artrNo = artrNo;
		this.artrName = artrName;
		this.artrSub = artrSub;
	}
	
	//get set
	public int getArtrNo() {
		return artrNo;
	}
	public void setArtrNo(int artrNo) {
		this.artrNo = artrNo;
	}
	public String getHosId() {
		return hosId;
	}
	public void setHosId(String hosId) {
		this.hosId = hosId;
	}
	public String getArtrName() {
		return artrName;
	}
	public void setArtrName(String artrName) {
		this.artrName = artrName;
	}
	public String getArtrSub() {
		return artrSub;
	}
	public void setArtrSub(String artrSub) {
		this.artrSub = artrSub;
	}
	
	
	
}
