package lastdto;

public class docuImgDTO {
	private int dcryNo; // 파일번호
	private byte[] imgFile;// 이미지파일(blob객체)

	public docuImgDTO() {
		super();
	}

	public docuImgDTO(int dcryNo, byte[] imgFile) {
		super();
		this.dcryNo = dcryNo;
		this.imgFile = imgFile;
	}

	public int getDcryNo() {
		return dcryNo;
	}

	public void setDcryNo(int dcryNo) {
		this.dcryNo = dcryNo;
	}

	public byte[] getImgFile() {
		return imgFile;
	}

	public void setImgFile(byte[] imgFile) {
		this.imgFile = imgFile;
	}

}
