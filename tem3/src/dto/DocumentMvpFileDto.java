package dto;

public class DocumentMvpFileDto {
	private int dcryNo; 	//파일번호
	private byte[] mvpFile;//파일(blob객체)
	
	
	public DocumentMvpFileDto() {
		super();
	}
	public DocumentMvpFileDto(int dcryNo, byte[] mvpFile) {
		super();
		this.dcryNo = dcryNo;
		this.mvpFile = mvpFile;
		
	}
	
	
	public int getDcryNo() {
		return dcryNo;
	}
	public void setDcryNo(int dcryNo) {
		this.dcryNo = dcryNo;
	}
	public byte[] getMvpFile() {
		return mvpFile;
	}
	public void setMvpFile(byte[] mvpFile) {
		this.mvpFile = mvpFile;
	}
	

	
}
