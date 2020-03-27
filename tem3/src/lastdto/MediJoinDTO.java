package lastdto;

public class MediJoinDTO {
	int num;
	int no;//진료번호
	String stt; //진료상태 기본N 진료완료(접수완료시)Y로 변경
	String sicId;
	String sicName;
	String hosId;
	String resTime;//접수시간
	  
	
	public MediJoinDTO() {
		super();
	}



	public int getNum() {
		return num;
	}



	public void setNum(int num) {
		this.num = num;
	}



	public MediJoinDTO(int num, int no, String stt, String sicId, String sicName, String hosId, String resTime) {
		super();
		this.num = num;
		this.no = no;
		this.stt = stt;
		this.sicId = sicId;
		this.sicName = sicName;
		this.hosId = hosId;
		this.resTime = resTime;
	}



	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getStt() {
		return stt;
	}
	public void setStt(String stt) {
		this.stt = stt;
	}
	public String getSicId() {
		return sicId;
	}
	public void setSicId(String sicId) {
		this.sicId = sicId;
	}
	public String getSicName() {
		return sicName;
	}
	public void setSicName(String sicName) {
		this.sicName = sicName;
	}
	public String getHosId() {
		return hosId;
	}
	public void setHosId(String hosId) {
		this.hosId = hosId;
	}
	public String getResTime() {
		return resTime;
	}
	public void setResTime(String resTime) {
		this.resTime = resTime;
	}

	@Override
	public String toString() {
		return "MediJoinDTO [num=" + num + ", no=" + no + ", stt=" + stt + ", sicId=" + sicId + ", sicName=" + sicName
				+ ", hosId=" + hosId + ", resTime=" + resTime + "]";
	}

	
	
	
}
