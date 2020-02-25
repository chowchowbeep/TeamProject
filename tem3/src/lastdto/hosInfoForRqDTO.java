package lastdto;

import java.util.Arrays;

public class hosInfoForRqDTO {
	//hos_member
	private String hosId;
	private String hosName;
	private String hosAddr;
	private String bizTime; //(예약시 필요)
	
	//hos_schedule 
	private String[] hosHldy; //to_char필요 //(예약)
	
	//artr_info 
	private int[] artrNo;
	private String[] artrName;
	private String[] artrSub; 
	
	//artr_schedule
	private String[] artrHldy; //to_char필요
	
	//hos_stt
	private String bizStt; //(접수)

	
	public hosInfoForRqDTO() {
		super();
		// TODO Auto-generated constructor stub
	}


	public String getHosId() {
		return hosId;
	}


	public void setHosId(String hosId) {
		this.hosId = hosId;
	}


	public String getHosName() {
		return hosName;
	}


	public void setHosName(String hosName) {
		this.hosName = hosName;
	}


	public String getHosAddr() {
		return hosAddr;
	}


	public void setHosAddr(String hosAddr) {
		this.hosAddr = hosAddr;
	}


	public String getBizTime() {
		return bizTime;
	}


	public void setBizTime(String bizTime) {
		this.bizTime = bizTime;
	}


	public String[] getHosHldy() {
		return hosHldy;
	}


	public void setHosHldy(String[] hosHldy) {
		this.hosHldy = hosHldy;
	}


	public int[] getArtrNo() {
		return artrNo;
	}


	public void setArtrNo(int[] artrNo) {
		this.artrNo = artrNo;
	}


	public String[] getArtrName() {
		return artrName;
	}


	public void setArtrName(String[] artrName) {
		this.artrName = artrName;
	}


	public String[] getArtrSub() {
		return artrSub;
	}


	public void setArtrSub(String[] artrSub) {
		this.artrSub = artrSub;
	}


	public String[] getArtrHldy() {
		return artrHldy;
	}


	public void setArtrHldy(String[] artrHldy) {
		this.artrHldy = artrHldy;
	}


	public String getBizStt() {
		return bizStt;
	}


	public void setBizStt(String bizStt) {
		this.bizStt = bizStt;
	}


	@Override
	public String toString() {
		return "hosInfoForRqDTO [hosId=" + hosId + ", hosName=" + hosName + ", hosAddr=" + hosAddr + ", bizTime="
				+ bizTime + ", hosHldy=" + Arrays.toString(hosHldy) + ", artrNo=" + Arrays.toString(artrNo)
				+ ", artrName=" + Arrays.toString(artrName) + ", artrSub=" + Arrays.toString(artrSub) + ", artrHldy="
				+ Arrays.toString(artrHldy) + ", bizStt=" + bizStt + "]";
	}

	
	
}
