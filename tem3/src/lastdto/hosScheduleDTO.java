package lastdto;


public class hosScheduleDTO {
	private int hyNum; // 휴일번호
	private String hosId; // 병원id
	private String hosHldy; // 병원휴일
	
	public int getHyNum() {
		return hyNum;
	}
	public void setHyNum(int hyNum) {
		this.hyNum = hyNum;
	}
	public String getHosId() {
		return hosId;
	}
	public void setHosId(String hosId) {
		this.hosId = hosId;
	}
	public String getHosHldy() {
		return hosHldy;
	}
	public void setHosHldy(String hosHldy) {
		this.hosHldy = hosHldy;
	}
	@Override
	public String toString() {
		return "hosScheduleDTO [hyNum=" + hyNum + ", hosId=" + hosId + ", hosHldy=" + hosHldy + "]";
	}

	
}
