package lastdto;

import java.sql.Date;

public class penaltyDTO {
	private int sicId; // 회원id
	private Date startDttm; // 시작일시

	public penaltyDTO() {
		super();
	}

	public penaltyDTO(int sicId, Date startDttm) {
		super();
		this.sicId = sicId;
		this.startDttm = startDttm;
	}

	public int getSicId() {
		return sicId;
	}

	public void setSicId(int sicId) {
		this.sicId = sicId;
	}

	public Date getStartDttm() {
		return startDttm;
	}

	public void setStartDttm(Date startDttm) {
		this.startDttm = startDttm;
	}

}
