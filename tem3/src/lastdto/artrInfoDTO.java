package lastdto;

public class artrInfoDTO {
	private int artrNo; // 의사번호
	private String hosId; // 병원id
	private String artrName; // 의사이름
	private String artrSub; // 진료과목

	// 생성자
	public artrInfoDTO() {
		super();
	}

	public artrInfoDTO(int artrNo, String hosId, String artrName, String artrSub) {
		super();
		this.artrNo = artrNo;
		this.hosId = hosId;
		this.artrName = artrName;
		this.artrSub = artrSub;
	}

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
