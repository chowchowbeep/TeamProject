package lastdto;

public class sickMemberDTO {
	private String sicId;		//회원id
	private String sicPw;		//회원pw
	private String sicName;		//이름
	private String sicPhone;	//전화번호
	private String sicStt;		//회원상태
	private String sicLogin;	//로그인방법
	private String sicSttNm;   //회원상태 알리아스
	private String sicLoginNm; //로그인방법 알리아스
	
	//생성자
	public sickMemberDTO() {
		super();
	}

	public String getSicId() {
		return sicId;
	}

	public void setSicId(String sicId) {
		this.sicId = sicId;
	}

	public String getSicPw() {
		return sicPw;
	}

	public void setSicPw(String sicPw) {
		this.sicPw = sicPw;
	}

	public String getSicName() {
		return sicName;
	}

	public void setSicName(String sicName) {
		this.sicName = sicName;
	}

	public String getSicPhone() {
		return sicPhone;
	}

	public void setSicPhone(String sicPhone) {
		this.sicPhone = sicPhone;
	}

	public String getSicStt() {
		return sicStt;
	}

	public void setSicStt(String sicStt) {
		this.sicStt = sicStt;
	}

	public String getSicLogin() {
		return sicLogin;
	}

	public void setSicLogin(String sicLogin) {
		this.sicLogin = sicLogin;
	}

	public String getSicSttNm() {
		return sicSttNm;
	}

	public void setSicSttNm(String sicSttNm) {
		this.sicSttNm = sicSttNm;
	}

	public String getSicLoginNm() {
		return sicLoginNm;
	}

	public void setSicLoginNm(String sicLoginNm) {
		this.sicLoginNm = sicLoginNm;
	}

	@Override
	public String toString() {
		return "sickMemberDTO [sicId=" + sicId + ", sicPw=" + sicPw + ", sicName=" + sicName + ", sicPhone=" + sicPhone
				+ ", sicStt=" + sicStt + ", sicLogin=" + sicLogin + ", sicSttNm=" + sicSttNm + ", sicLoginNm="
				+ sicLoginNm + "]";
	}
	
	
	
}
