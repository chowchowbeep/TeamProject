package dto;

public class DocumentImgFileDto {
	private int dcryNo; 	//파일번호
	private byte[] imgFile;//파일(blob객체)
	
	
	public DocumentImgFileDto() {
		super();
	}
	public DocumentImgFileDto(int dcryNo, byte[] imgFile) {
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
