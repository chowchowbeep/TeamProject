package dto;

import java.sql.Date;

public class AttrScheduleDto { //의사스케쥴
	private int	artrNo;		//의사번호
	private String hosId; 	//병원id
	private Date artrHldy; 	//휴일
	
	//생성자
	public AttrScheduleDto() {
		super();
	}
	public AttrScheduleDto(int artrNo, String hosId, Date artrHldy) {
		super();
		this.artrNo = artrNo;
		this.hosId = hosId;
		this.artrHldy = artrHldy;
	}
	
	
	//get set
	public int getArtrNo() {
		return artrNo;
	}

	public void setArtrNo(int artrNo) {
		this.artrNo = artrNo;
	}



	public String getHosId() {
		return hosId;
	}



	public void setHosId(String hosId) {
		this.hosId = hosId;
	}



	public Date getArtrHldy() {
		return artrHldy;
	}



	public void setArtrHldy(Date artrHldy) {
		this.artrHldy = artrHldy;
	}




	
	
}

