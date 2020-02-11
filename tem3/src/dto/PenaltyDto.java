package dto;

import java.sql.Date;

public class PenaltyDto { //패널티제재현황 테이블
	private int sicId;		//회원id
	private Date startDttm;	//시작일시
	
	
	public PenaltyDto() {
		super();
	}

	public PenaltyDto(int sicId, Date startDttm) {
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
