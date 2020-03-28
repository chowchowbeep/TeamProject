package lastdto;

public class mediaListDTO {
	
	private String fileName; //파일 이름
	private String fileType; //파일타입
	private String artrName; //의사이름
	private String hosName; //병원이름
	
	@Override
	public String toString() {
		return "mediaList [fileName=" + fileName + ", fileType=" + fileType + ", artrName=" + artrName + ", hosName="
				+ hosName + "]";
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	public String getArtrName() {
		return artrName;
	}

	public void setArtrName(String artrName) {
		this.artrName = artrName;
	}

	public String getHosName() {
		return hosName;
	}

	public void setHosName(String hosName) {
		this.hosName = hosName;
	}
	
	

}
