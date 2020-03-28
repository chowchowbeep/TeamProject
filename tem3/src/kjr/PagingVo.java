package kjr;

public class PagingVo {
	//paging
	private double totalCount; // 전체 게시글 수 (get)
	private int currentPage; // 현재 페이지 (get)
	private int totalPage; // 전체 페이지 수 (get)
	//pagination
	private double displayPage = 5; // 한 페이지에 몇 개의 페이지 (선택 set)
	private int displayRow = 10; // 한 페이지에 몇 개의 로우 (선택 set)
	private int beginPage; // 페이징 시작 페이지 수
	private int endPage; // 페이징 종료 페이지 수
	private int progress; //이전
	private int next;	//다음
	private int totalblcok;//전체 블럭 수 
	private int nowblock;//현재 보여질 블럭 << 누른번호/블럭갯수
	private int btnStart; //nowblock 값 + (nowblcok-1)
	private boolean ifTest;
	
	
	public boolean isIfTest() {
		return ifTest;
	}
	public void setIfTest(boolean ifTest) {
		this.ifTest = ifTest;
	}
	public void setTotalCount(double totalCount) {
		this.totalCount = totalCount;
	}
	public void setDisplayPage(double displayPage) {
		this.displayPage = displayPage;
	}
	public PagingVo(double totalCount, int currentPage, int totalPage, int displayPage, int displayRow, int beginPage,
			int endPage, int progress, int next, int totalblcok, int nowblock, int btnStart) {
		super();
		this.totalCount = totalCount;
		this.currentPage = currentPage;
		this.totalPage = totalPage;
		this.displayPage = displayPage;
		this.displayRow = displayRow;
		this.beginPage = beginPage;
		this.endPage = endPage;
		this.progress = progress;
		this.next = next;
		this.totalblcok = totalblcok;
		this.nowblock = nowblock;
		this.btnStart = btnStart;
	}
	public int getTotalblcok() {
		return totalblcok;
	}
	public void setTotalblcok(int totalblcok) {
		this.totalblcok = totalblcok;
	}
	public int getNowblock() {
		return nowblock;
	}
	public void setNowblock(int nowblock) {
		this.nowblock = nowblock;
	}
	public int getBtnStart() {
		return btnStart;
	}
	public void setBtnStart(int btnStart) {
		this.btnStart = btnStart;
	}
	public PagingVo() {
		super();
	}
	public PagingVo(double totalCount, int currentPage, int totalPage, int displayPage, int displayRow, int beginPage,
			int endPage) {
		super();
		this.totalCount = totalCount;
		this.currentPage = currentPage;
		this.totalPage = totalPage;
		this.displayPage = displayPage;
		this.displayRow = displayRow;
		this.beginPage = beginPage;
		this.endPage = endPage;
	}

	public int getProgress() {
		return progress;
	}
	public void setProgress(int progress) {
		this.progress = progress;
	}
	public int getNext() {
		return next;
	}
	public void setNext(int next) {
		this.next = next;
	}
	public double getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public double getDisplayPage() {
		return displayPage;
	}
	public void setDisplayPage(int displayPage) {
		this.displayPage = displayPage;
	}
	public int getDisplayRow() {
		return displayRow;
	}
	public void setDisplayRow(int displayRow) {
		this.displayRow = displayRow;
	}
	public int getBeginPage() {
		return beginPage;
	}
	public void setBeginPage(int beginPage) {
		this.beginPage = beginPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	@Override
	public String toString() {
		return "PagingVo [totalCount=" + totalCount + ", currentPage=" + currentPage + ", totalPage=" + totalPage
				+ ", displayPage=" + displayPage + ", displayRow=" + displayRow + ", beginPage=" + beginPage
				+ ", endPage=" + endPage + ", progress=" + progress + ", next=" + next + ", totalblcok=" + totalblcok
				+ ", nowblock=" + nowblock + ", btnStart=" + btnStart + ", ifTest=" + ifTest + "]";
	}

	

	
}
