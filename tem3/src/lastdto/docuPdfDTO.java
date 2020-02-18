package lastdto;

public class docuPdfDTO {
	private int dcryNo; // 파일번호
	private byte[] pdfFile;// pdf파일(blob객체)

	public docuPdfDTO() {
		super();
	}

	public docuPdfDTO(int dcryNo, byte[] pdfFile) {
		super();
		this.dcryNo = dcryNo;
		this.pdfFile = pdfFile;
	}

	public int getDcryNo() {
		return dcryNo;
	}

	public void setDcryNo(int dcryNo) {
		this.dcryNo = dcryNo;
	}

	public byte[] getPdfFile() {
		return pdfFile;
	}

	public void setPdfFile(byte[] pdfFile) {
		this.pdfFile = pdfFile;
	}

}
