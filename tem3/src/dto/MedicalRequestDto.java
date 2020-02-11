package dto;

import java.sql.Date;
import java.sql.Timestamp;

public class MedicalRequestDto { //진료신청 테이블
	private int rqstNo;		//진료신청번호
	private String sicId;	//회원id
	private Date rqstDttm;	//신청일시
	private String hosId;	//병원id
	private Date resDt;		//예약날짜
	private int artrNo;		//의사번호
	private Timestamp resTime;	//예약시간
	private String rqstTy;	//진료타입
	private String msg;		//한마디
	private int dcryNo;		//파일번호
	
	
	
	
	
	//생성자
	public MedicalRequestDto() {
		super();
	}
	public MedicalRequestDto(int rqstNo, String sicId, Date rqstDttm, String hosId, Date resDt, int artrNo,
			Timestamp resTime, String rqstTy, String msg, int dcryNo) {
		super();
		this.rqstNo = rqstNo;
		this.sicId = sicId;
		this.rqstDttm = rqstDttm;
		this.hosId = hosId;
		this.resDt = resDt;
		this.artrNo = artrNo;
		this.resTime = resTime;
		this.rqstTy = rqstTy;
		this.msg = msg;
		this.dcryNo = dcryNo;
	}
	
	//get set
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
	public Date getResDt() {
		return resDt;
	}
	public void setResDt(Date resDt) {
		this.resDt = resDt;
	}
	public int getArtrNo() {
		return artrNo;
	}
	public void setArtrNo(int artrNo) {
		this.artrNo = artrNo;
	}
	public Timestamp getResTime() {
		return resTime;
	}
	public void setResTime(Timestamp resTime) {
		this.resTime = resTime;
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
	
	
	
	
}
