package lastdto;

public class mediRqdetailDTO {
	//medi_rqst
	private int rqstNo; // 진료신청번호
	private String sicId; // 회원id
	private String rqstDt; // 신청일자
	private String rqstTm; // 신청일시
	private String hosId; // 병원id
	private String resDt; // 예약일자
	private String resTm; // 예약시간
	private int artrNo; // 의사번호
	private String rqstTy; // 진료타입
	private String msg; // 한마디
	private int dcryNo; // 파일번호
	private String ifTime; //도착예정시간 
	
	
	//hos_member
	private String hosName; // 병원명
	private String hosPhone; // 전화번호
	private String hosAddr; // 주소
	
	//artr_info
	private String artrName; //의사이름
	private String artrSub; //진료과목
	
	//medi_info 
	private String mcttStt; // 진료상태

	public mediRqdetailDTO() {
		super();
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

	public String getRqstDt() {
		return rqstDt;
	}

	public void setRqstDt(String rqstDt) {
		this.rqstDt = rqstDt;
	}

	public String getRqstTm() {
		return rqstTm;
	}

	public void setRqstTm(String rqstTm) {
		this.rqstTm = rqstTm;
	}

	public String getHosId() {
		return hosId;
	}

	public void setHosId(String hosId) {
		this.hosId = hosId;
	}

	public String getResDt() {
		return resDt;
	}

	public void setResDt(String resDt) {
		this.resDt = resDt;
	}

	public String getResTm() {
		return resTm;
	}

	public void setResTm(String resTm) {
		this.resTm = resTm;
	}

	public int getArtrNo() {
		return artrNo;
	}

	public void setArtrNo(int artrNo) {
		this.artrNo = artrNo;
	}

	public String getRqstTy() {
		return rqstTy;
	}

	public void setRqstTy(String rqstTy) {
		this.rqstTy = rqstTy;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public int getDcryNo() {
		return dcryNo;
	}

	public void setDcryNo(int dcryNo) {
		this.dcryNo = dcryNo;
	}

	public String getIfTime() {
		return ifTime;
	}

	public void setIfTime(String ifTime) {
		this.ifTime = ifTime;
	}

	public String getHosName() {
		return hosName;
	}

	public void setHosName(String hosName) {
		this.hosName = hosName;
	}

	public String getHosPhone() {
		return hosPhone;
	}

	public void setHosPhone(String hosPhone) {
		this.hosPhone = hosPhone;
	}

	public String getHosAddr() {
		return hosAddr;
	}

	public void setHosAddr(String hosAddr) {
		this.hosAddr = hosAddr;
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

	public String getMcttStt() {
		return mcttStt;
	}

	public void setMcttStt(String mcttStt) {
		this.mcttStt = mcttStt;
	}

	@Override
	public String toString() {
		return "mediRqdetailDTO [rqstNo=" + rqstNo + ", sicId=" + sicId + ", rqstDt=" + rqstDt + ", rqstTm=" + rqstTm
				+ ", hosId=" + hosId + ", resDt=" + resDt + ", resTm=" + resTm + ", artrNo=" + artrNo + ", rqstTy="
				+ rqstTy + ", msg=" + msg + ", dcryNo=" + dcryNo + ", ifTime=" + ifTime + ", hosName=" + hosName
				+ ", hosPhone=" + hosPhone + ", hosAddr=" + hosAddr + ", artrName=" + artrName + ", artrSub=" + artrSub
				+ ", mcttStt=" + mcttStt + "]";
	}
	
	
	
	
	
}
