package lastdto;

import java.sql.Date;

public class mediRqdetailDTO {
	//medi_rqst
	private int rqstNo; // 진료신청번호
	private String sicId; // 회원id
	private Date rqstDttm; // 신청일시
	private String hosId; // 병원id
	private Date resDttm; // 예약일시
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
	private String artr_name; //의사이름
	private String artr_sub; //진료과목
	
	//medi_info
	private String mcttStt; // 진료상태

	public mediRqdetailDTO() {
		super();
		// TODO Auto-generated constructor stub
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

	public Date getRqstDttm() {
		return rqstDttm;
	}

	public void setRqstDttm(Date rqstDttm) {
		this.rqstDttm = rqstDttm;
	}

	public String getHosId() {
		return hosId;
	}

	public void setHosId(String hosId) {
		this.hosId = hosId;
	}

	public Date getResDttm() {
		return resDttm;
	}

	public void setResDttm(Date resDttm) {
		this.resDttm = resDttm;
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

	public String getArtr_name() {
		return artr_name;
	}

	public void setArtr_name(String artr_name) {
		this.artr_name = artr_name;
	}

	public String getArtr_sub() {
		return artr_sub;
	}

	public void setArtr_sub(String artr_sub) {
		this.artr_sub = artr_sub;
	}

	public String getMcttStt() {
		return mcttStt;
	}

	public void setMcttStt(String mcttStt) {
		this.mcttStt = mcttStt;
	}

	@Override
	public String toString() {
		return "mediRqdetailDTO [rqstNo=" + rqstNo + ", sicId=" + sicId + ", rqstDttm=" + rqstDttm + ", hosId=" + hosId
				+ ", resDttm=" + resDttm + ", artrNo=" + artrNo + ", rqstTy=" + rqstTy + ", msg=" + msg + ", dcryNo="
				+ dcryNo + ", ifTime=" + ifTime + ", hosName=" + hosName + ", hosPhone=" + hosPhone + ", hosAddr="
				+ hosAddr + ", artr_name=" + artr_name + ", artr_sub=" + artr_sub + ", mcttStt=" + mcttStt + "]";
	}
	
	
	
}
