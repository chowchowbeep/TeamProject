package lastdto;

import java.sql.Date;

public class mediListDTO {
	private int rqstNo; // 진료신청번호
	private String rqstTy; // 진료타입
	private Date rqstDttm; // 신청일시
	private Date resDttm; // 예약일시
	private String ifTime; // 도착예정시간
	private String sicName; // 환자이름
	private String artrName; // 의사이름

	// 생성자
	public mediListDTO() {
		super();
	}

	public int getRqstNo() {
		return rqstNo;
	}

	public void setRqstNo(int rqstNo) {
		this.rqstNo = rqstNo;
	}

	public String getRqstTy() {
		return rqstTy;
	}

	public void setRqstTy(String rqstTy) {
		this.rqstTy = rqstTy;
	}

	public Date getRqstDttm() {
		return rqstDttm;
	}

	public void setRqstDttm(Date rqstDttm) {
		this.rqstDttm = rqstDttm;
	}

	public Date getResDttm() {
		return resDttm;
	}

	public void setResDttm(Date resDttm) {
		this.resDttm = resDttm;
	}

	public String getIfTime() {
		return ifTime;
	}

	public void setIfTime(String ifTime) {
		this.ifTime = ifTime;
	}

	public String getSicName() {
		return sicName;
	}

	public void setSicName(String sicName) {
		this.sicName = sicName;
	}

	public String getArtrName() {
		return artrName;
	}

	public void setArtrName(String artrName) {
		this.artrName = artrName;
	}
	
}