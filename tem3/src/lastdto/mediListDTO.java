package lastdto;

import java.sql.Date;

public class mediListDTO {
	private int rqstNo; // 진료신청번호
	private String rqstTy; // 진료타입
	private Date rqstDttm; // 신청일시
	private Date resDttm; // 예약일시
	private String ifTime; // 도착예정시간
	private String sicName; // 환자이름
	private String sicPhone; //환자번호
	private String artrName; // 의사이름
	
	public int getRqstNo() {
		return rqstNo;
	}
	public String getRqstTy() {
		return rqstTy;
	}
	public Date getRqstDttm() {
		return rqstDttm;
	}
	public Date getResDttm() {
		return resDttm;
	}
	public String getIfTime() {
		return ifTime;
	}
	public String getSicName() {
		return sicName;
	}
	public String getSicPhone() {
		return sicPhone;
	}
	public String getArtrName() {
		return artrName;
	}
	public void setRqstNo(int rqstNo) {
		this.rqstNo = rqstNo;
	}
	public void setRqstTy(String rqstTy) {
		this.rqstTy = rqstTy;
	}
	public void setRqstDttm(Date rqstDttm) {
		this.rqstDttm = rqstDttm;
	}
	public void setResDttm(Date resDttm) {
		this.resDttm = resDttm;
	}
	public void setIfTime(String ifTime) {
		this.ifTime = ifTime;
	}
	public void setSicName(String sicName) {
		this.sicName = sicName;
	}
	public void setSicPhone(String sicPhone) {
		this.sicPhone = sicPhone;
	}
	public void setArtrName(String artrName) {
		this.artrName = artrName;
	}
	@Override
	public String toString() {
		return "mediListDTO [rqstNo=" + rqstNo + ", rqstTy=" + rqstTy + ", rqstDttm=" + rqstDttm + ", resDttm="
				+ resDttm + ", ifTime=" + ifTime + ", sicName=" + sicName + ", sicPhone=" + sicPhone + ", artrName="
				+ artrName + "]";
	}

	
	
}