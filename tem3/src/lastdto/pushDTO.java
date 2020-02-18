package lastdto;

import java.sql.Date;

public class pushDTO {
	private int pushNo; // 알림번호
	private String id; // id
	private Date pushDttm; // 일시
	private String pushCont;// 내용
	private int rqstNo; // 진료신청번호

	public pushDTO() {
		super();
	}

	public pushDTO(int pushNo, String id, Date pushDttm, String pushCont, int rqstNo) {
		super();
		this.pushNo = pushNo;
		this.id = id;
		this.pushDttm = pushDttm;
		this.pushCont = pushCont;
		this.rqstNo = rqstNo;
	}

	public int getPushNo() {
		return pushNo;
	}

	public void setPushNo(int pushNo) {
		this.pushNo = pushNo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getPushDttm() {
		return pushDttm;
	}

	public void setPushDttm(Date pushDttm) {
		this.pushDttm = pushDttm;
	}

	public String getPushCont() {
		return pushCont;
	}

	public void setPushCont(String pushCont) {
		this.pushCont = pushCont;
	}

	public int getRqstNo() {
		return rqstNo;
	}

	public void setRqstNo(int rqstNo) {
		this.rqstNo = rqstNo;
	}

}
