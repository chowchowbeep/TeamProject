package lastdto;

import java.sql.Date;

public class declarationDTO {
	private int decNo;		//신고번호
	private String sicId;	//회원id
	private String hosId; 	//병원id
	private String decCont; //신고내용
	private Date  decDttm;  //신고일시
	private String decStt;  //처리상태
	
	
	//생성자
	public declarationDTO() {
		super();
	}
	public declarationDTO(int decNo, String sicId, String decCont, Date decDttm, String decStt, String hosId) {
		super();
		this.decNo = decNo;
		this.sicId = sicId;
		this.decCont = decCont;
		this.decDttm = decDttm;
		this.decStt = decStt;
		this.hosId = hosId;
	}
	public int getDecNo() {
		return decNo;
	}
	public void setDecNo(int decNo) {
		this.decNo = decNo;
	}
	public String getSicId() {
		return sicId;
	}
	public void setSicId(String sicId) {
		this.sicId = sicId;
	}
	public String getHosId() {
		return hosId;
	}
	public void setHosId(String hosId) {
		this.hosId = hosId;
	}
	public String getDecCont() {
		return decCont;
	}
	public void setDecCont(String decCont) {
		this.decCont = decCont;
	}
	public Date getDecDttm() {
		return decDttm;
	}
	public void setDecDttm(Date decDttm) {
		this.decDttm = decDttm;
	}
	public String getDecStt() {
		return decStt;
	}
	public void setDecStt(String decStt) {
		this.decStt = decStt;
	}
	
	
	
}
