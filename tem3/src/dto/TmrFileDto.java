package dto;

public class TmrFileDto { //접수증파일테이블
	private int tmrNo; //접수증번호
	private String qr; //qr이미지
	
	//생성자
	public TmrFileDto() {
		super();
	}
	public TmrFileDto(int tmrNo, String qr) {
		super();
		this.tmrNo = tmrNo;
		this.qr = qr;
	}
	
	//get set
	public int getTmrNo() {
		return tmrNo;
	}
	public void setTmrNo(int tmrNo) {
		this.tmrNo = tmrNo;
	}
	public String getQr() {
		return qr;
	}
	public void setQr(String qr) {
		this.qr = qr;
	}
	
}
