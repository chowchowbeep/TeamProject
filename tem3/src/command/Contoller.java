package command;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cmd.HDoctorAddCMD;
import cmd.HDoctorlistCMD;
import cmd.HHospitalInquiryCMD;
import cmd.HMenubarCMD;
import cmd.HSickSearchCMD;
import cmd.HSickSearchDetailCMD;
import cmd.HSickSearchListCMD;
import cmd.HHospitalMainCMD;
import cmd.HHospitalMymenuCMD;
import cmd.HHospitalProfileCMD;
import cmd.HHospitalUploadCMD;
import cmd.HMediAllCMD;
import cmd.HMediDetailCMD;
import cmd.HMediReserveCMD;
import cmd.HMediWjqtnCMD;
import cmd.MChartCMD;
import cmd.MChartDetailCMD;
import cmd.MMenubarCMD;
import cmd.MPoliceCMD;
import cmd.MPoliceDetailCMD;
import cmd.MSearchHosCMD;
import cmd.MSearchHoslistCMD;
import cmd.MSearchHoslistHosCMD;
import cmd.MasterMainCMD;
import cmd.MasterSearchNormalCMD;
import cmd.SAroundMapCMD;
import cmd.SHospitalInfoCMD;
import cmd.SMedBeforeMedListCMD;
import cmd.SMedDoneDetailCMD;
import cmd.SMedDoneListCMD;
import cmd.SMenubarCMD;
import cmd.SResDetailCMD;
import cmd.SResDoneCMD;
import cmd.SResRequestCMD;
import cmd.SReviewMylistCMD;
import cmd.SReviewWriteCMD;
import cmd.SSickHealModifyCMD;
import cmd.SSickMemModifyCMD;
import cmd.SSickWjqtnCreateCMD;
import cmd.SSickWjqtnwmdCMD;
import cmd.STmrDetailCMD;
import cmd.STmrDoneCMD;
import cmd.STmrRequestCMD;
import cmd.SsearchMainCMD;
import cmd.TestCMD;
import cmd.MSearchListCMD;
import cmd.MSearchListNormalCMD;
import kjr.cmd.SearchListCMD;
import kjr.cmd.SickMainCMD;

@WebServlet("*.do")
public class Contoller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Map<String, Command> cont = new HashMap<>(); //Map<path,command패키지의 Command를 implements한 패키지> 
	
	public Contoller() {
		super();
	}
	   
	
	public void init(ServletConfig config) throws ServletException {
		//컨트롤러 테스트 페이지
		cont.put("/Test.do", new TestCMD()); 
		
		//관리자관련 페이지
		cont.put("/MMain.do", new MasterMainCMD()); //관리자 메인페이지로 이동
		cont.put("/MSearchNormal.do", new MasterSearchNormalCMD() ); //M2 회원검색(일반회원) 페이지로 이동
		cont.put("/MSearchHos.do", new MSearchHosCMD() ); //M2 병원검색(병원회원) 페이지로 이동
		cont.put("/MSearchList.do", new MSearchListCMD()); //일반회원정보 검색 결과 리스트 페이지로 이동
		cont.put("/MSearchListNormal.do", new MSearchListNormalCMD()); //일반회원정보 검색 결과 상세페이지로 이동
		cont.put("/MSearchHoslist.do", new MSearchHoslistCMD()); //병원회원정보 검색결과 리스트 페이지로 이동
		cont.put("/MSearchHoslistHos.do", new MSearchHoslistHosCMD()); //병원회원정보 검색결과 상세 페이지로 이동
		cont.put("/MChart.do", new MChartCMD()); //통계관리 페이지로 이동
		cont.put("/MChartDetail.do", new MChartDetailCMD()); //통계관리 상세페이지로 이동
		cont.put("/MPolice.do", new MPoliceCMD()); //신고 리스트 페이지로 이동
		cont.put("/MPoliceDetail.do", new MPoliceDetailCMD()); //상세-신고 페이지로 이동
		
		cont.put("/MMenubar.do", new MMenubarCMD()); //관리자 메뉴바페이지로 이동
		cont.put("/HMenubar.do", new HMenubarCMD()); //병원회원 메뉴바페이지로 이동
		cont.put("/SMenubar.do", new SMenubarCMD()); //일반회원 메뉴바페이지로 이동
		
		//병원회원관련 페이지
	//	cont.put("/HhosSinup.do", new HhosSinupCMD()); //병원회원용 회원가입 페이지 로 이동
		cont.put("/HHospitalMain.do", new HHospitalMainCMD()); //병원회원 메인페이지 로 이동
	//	cont.put("/Hpopup.do", new HpopupCMD()); //알림 팝업 페이지 로이동
		cont.put("/HMediAll.do", new HMediAllCMD()); //(전체)진료신청 현황 리스트 페이지 로 이동
		cont.put("/HMediWjqtn.do", new HMediWjqtnCMD()); //(당일접수)진료신청 현황 리스트 페이지 로 이동
		cont.put("/HMediReserve.do", new HMediReserveCMD()); //(예약)진료신청 현황 리스트 페이지 로 이동
		cont.put("/HMediDetail.do", new HMediDetailCMD()); //진료상세정보  페이지 로 이동
		cont.put("/HHospitalUpload.do", new HHospitalUploadCMD()); //기록물 업로드 페이지  로 이동
		cont.put("/HHospitalInquiry.do", new HHospitalInquiryCMD()); //기록물 조회 페이지  로 이동
		cont.put("/HSickSearch.do", new HSickSearchCMD()); //H8 회원정보 검색 페이지  로 이동
		cont.put("/HSickSearchList.do", new HSickSearchListCMD()); //H9 회원정보 검색 리스트 페이지  로 이동
		cont.put("/HSickSearchDetail.do", new HSickSearchDetailCMD()); //H10 회원정보 검색 결과 상세 페이지  로 이동
		cont.put("/HHospitalMymenu.do", new HHospitalMymenuCMD()); //H11 마이메뉴 페이지  로 이동
		cont.put("/HHospitalProfile.do", new HHospitalProfileCMD()); //H12 병원회원 수정 페이지  로 이동
		cont.put("/HDoctorlist.do", new HDoctorlistCMD()); //H13 의사 리스트 페이지 로 이동
		cont.put("/HDoctorAdd.do", new HDoctorAddCMD()); //H14 의사추가페이지 로 이동
	//	cont.put("/.do", new CMD()); //(병원)휴일 설정 페이지 로 이동
	//	cont.put("/.do", new CMD()); //(의사)휴일 설정 페이지 로 이동
		 
		
		//일반회원관련 페이지
	//	cont.put("/S.do", new CMD()); //S1 일반회원 회원가입 페이지 로 이동 
		cont.put("/SSickMain.do", new SickMainCMD()); 		//S2일반회원 메인페이지로 이동
		cont.put("/SSickMemModify.do", new SSickMemModifyCMD()); //S3 회원정보 수정 페이지
		cont.put("/SSickWjqtnwmd.do", new SSickWjqtnwmdCMD()); //S4 접수증 페이지(QR)
		cont.put("/SSickWjqtnCreate.do", new SSickWjqtnCreateCMD()); //S5 접수증 생성 페이지
	//	cont.put("/S.do", new CMD()); //S6 약정보 조회 페이지
		cont.put("/SSearchList.do", new SearchListCMD()); //S7 검색 결과 리스트 페이지
		cont.put("/SHospitalInfo.do", new SHospitalInfoCMD()); //S8 병원정보 상세조회 페이지
		cont.put("/SsearchMain.do", new SsearchMainCMD()); //S9~S14 메인 검색 페이지
		cont.put("/ShospitalInfo.do", new SHospitalInfoCMD()); //S15 필터 페이지
		cont.put("/SMedDoneList.do", new SMedDoneListCMD()); //S16 진료이력 리스트 페이지
		cont.put("/SMedDoneDetail.do", new SMedDoneDetailCMD()); // 진료이력 상세 페이지
		
		cont.put("/SReviewWrite.do", new SReviewWriteCMD()); //S17 리뷰 작성 페이지
		cont.put("/SReviewMylist.do", new SReviewMylistCMD()); //S18 내가 쓴 리뷰 리스트 페이지
		cont.put("/SSickHealModify.do", new SSickHealModifyCMD()); //S19 건강정보 수정 페이지
		cont.put("/SMedBeforeMedList.do", new SMedBeforeMedListCMD()); //S20 진료신청현황 리스트 페이지
		cont.put("/STmrDetail.do", new STmrDetailCMD()); //S21 진료신청현황 상세/취소 페이지(당일접수)
		cont.put("/SResDetail.do", new SResDetailCMD()); //S22 진료신청현황 상세/취소 페이지(예약)
		cont.put("/SAroundMap.do", new SAroundMapCMD()); //S23 주변 병원/약국 페이지
		cont.put("/SResRequest.do", new SResRequestCMD()); //S24 예약신청 페이지
	//	cont.put("/S.do", new CMD()); //S25 예약날짜 선택 페이지
	//	cont.put("/S.do", new CMD()); //S26 예약시간 선택 페이지
		cont.put("/SResDone.do", new SResDoneCMD()); //S27 예약완료 페이지
		cont.put("/STmrRequest.do", new STmrRequestCMD()); //S28 당일접수 신청 페이지
		cont.put("/STmrDone.do", new STmrDoneCMD()); //S29 당일접수 완료 페이지
		
	/*	cont.put("/S.do", new CMD()); //S30 관심병원 리스트 페이지
		cont.put("/S.do", new CMD()); //S31 기록물-기록물 리스트페이지
		cont.put("/S.do", new CMD()); //S32 서류-기록물 리스트페이지
		cont.put("/S.do", new CMD()); //S33 (진료신청시)기록물 선택 페이지
		cont.put("/S.do", new CMD()); //S34 기록물 상세 페이지
		cont.put("/S.do", new CMD()); //S35 기록물 업로드 페이지
		cont.put("/S.do", new CMD()); //S36 병원 신고 페이지
		

		cont.put("/.do", new CMD()); // 알림아이콘
		
		//공통
		cont.put("/.do", new CMD()); //로그인 페이지
		cont.put("/.do", new CMD()); //로그아웃 페이지
		cont.put("/.do", new CMD()); //오류페이지
		cont.put("/.do", new CMD()); //위젯
		
		
		
		
	*/	
/*		cont.put("/ajax/DeleteUsers.do", new DeleteUsers());
		cont.put("/ajax/GetUsers.do", new GetUsers());
		cont.put("/ajax/InsertUsers.do", new InsertUsers());
		cont.put("/ajax/UpdateUsers.do", new UpdateUsers());
		cont.put("/Upload.do", new FileUpload());
		cont.put("/GetDeptCnt.do", new GetDeptCnt());
*/
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.substring(context.length());
		System.out.println("uri정보:"+uri);
		System.out.println("context정보:"+context);
		System.out.println("path정보:"+path);

		Command command = cont.get(path); // 이동할 path를 받음
		if (command != null) {
			String page = command.execute(request, response); // 해당패스를 처리할 클래스안에서 처리후)
			System.out.println(page);
			if (page != null && !page.isEmpty()) {
				if (page.startsWith("redirect:")) {
					String view = page.substring(9);
					response.sendRedirect(view);
				} else if (page.startsWith("ajax:")) {
					response.getWriter().append(page.substring(5));
				} else if (page.startsWith("script:")) {
					response.getWriter().append("<script>").append(page.substring(7)).append("</script>");
				} else {
					request.getRequestDispatcher(page).forward(request, response);
				}
			} else {

				System.out.println("null");

			}

		}
	}
	
	
	
}
