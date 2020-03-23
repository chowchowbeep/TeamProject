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
import cmd.HDoctorAddVerifyCMD;
import cmd.HDoctorlistCMD;
import cmd.HHospitalInquiryCMD;
import cmd.HHospitalMemberBizNoCheckActionCMD;
import cmd.HHospitalMemberIdCheckActionCMD;
import cmd.HHospitalMymenuCMD;
import cmd.HHospitalProfileCMD;
import cmd.HHospitalSignupActionCMD;
import cmd.HHospitalSignupCMD;
import cmd.HHospitalUploadCMD;
import cmd.HMediAllCMD;
import cmd.HMediDetailCMD;
import cmd.HMediReserveCMD;
import cmd.HMediWjqtnCMD;
import cmd.HSickSearchCMD;
import cmd.HSickSearchDetailCMD;
import cmd.HSickSearchListCMD;
import cmd.MChartCMD;
import cmd.MChartDetailCMD;
import cmd.MPoliceCMD;
import cmd.MPoliceDetailCMD;
import cmd.MSearchHosCMD;
import cmd.MSearchHoslistCMD;
import cmd.MSearchHoslistHosCMD;
import cmd.MSearchListCMD;
import cmd.MSearchListNormalCMD;
import cmd.MasterMainCMD;
import cmd.MasterSearchNormalCMD;
import cmd.SAroundMapCMD;
import cmd.SBookmarkCMD;
import cmd.SCancelRqCMD;
import cmd.SGetHosStt;
import cmd.SDeclarationCMD;
import cmd.SDeclarationInsertCMD;
import cmd.SGetDrListAjaxCMD;
import cmd.SGetDrNotOnDutyListAjaxCMD;
import cmd.SGetDrHldlyListAjaxCMD;
import cmd.SGetHosHldyListAjaxCMD;
import cmd.SHospitalInfoCMD;
import cmd.SInsertResCMD;
import cmd.SInsertTmrCMD;
import cmd.SMedABeforeMedListCMD;
import cmd.SMedADoneListCMD;
import cmd.SMedCBeforeMedListCMD;
import cmd.SMedDoneDetailCMD;
import cmd.SMedRBeforeMedListCMD;
import cmd.SMedRDoneListCMD;
import cmd.SMedTBeforeMedListCMD;
import cmd.SMedTDoneListCMD;
import cmd.SResRequestCMD;
import cmd.SReviewMylistCMD;
import cmd.SReviewWriteCMD;
import cmd.SRqDetailCMD;
import cmd.SRqDoneCMD;
import cmd.SSickDetailListCMD;
import cmd.SSickDocuListCMD;
import cmd.SSickHealModifyCMD;
import cmd.SSickMediaListCMD;
import cmd.SSickMemModifyCMD;
import cmd.SSickMemberIdCheckActionCMD;
import cmd.SSickMemberModifyGoCMD;
import cmd.SSickSignupActionCMD;
import cmd.SSickSignupCMD;
import cmd.SSickUploadCMD;
import cmd.SSickWjqtnCreateCMD;
import cmd.SSickWjqtnwmdCMD;
import cmd.STmrRequestCMD;
import cmd.STmrSelectDcryCMD;
import cmd.SGetRqstInfoCMD;
import cmd.SGetModelCMD;
import cmd.SGetUnselectableTime;
import cmd.SGetWaitingCntCMD;
import cmd.ShospitalInfoForTestCMD;
import cmd.SsearchMainCMD;
import cmd.TestCMD;
import kjr.ajax.CategoriAjaxCMD;
import kjr.ajax.HosSttAjaxCMD;
import kjr.ajax.LocaseachAjaxCMD;
import kjr.ajax.ReviewDeleteAjaxCMD;
import kjr.ajax.ReviewInsrtAjaxCMD;
import kjr.cmd.SearchListCMD;
import kjr.cmd.SickMainCMD;



@WebServlet("*.do")
public class Contoller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Map<String, Command> cont = new HashMap<>(); // Map<path,command패키지의 Command를 implements한 패키지>

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
		
//		cont.put("/MMenubar.do", new MMenubarCMD()); //관리자 메뉴바페이지로 이동
//		cont.put("/HMenubar.do", new HMenubarCMD()); //병원회원 메뉴바페이지로 이동
//		cont.put("/SMenubar.do", new SMenubarCMD()); //일반회원 메뉴바페이지로 이동
		
		//병원회원관련 페이지
	//	cont.put("/HhosSignup.do", new HosSignupCMD());
		cont.put("/HHospitalSignupAction.do", new HHospitalSignupActionCMD()); //병원회원용 회원가입 페이지로 이동
		cont.put("/HHospitalSignup.do", new HHospitalSignupCMD()); //병원회원 가입 DB처리
		cont.put("/HHospitalMemberIdCheckAction.do", new HHospitalMemberIdCheckActionCMD());  //(병원)ID 중복검사 페이지로 이동
		cont.put("/HHospitalMemberBizNoCheckAction.do", new HHospitalMemberBizNoCheckActionCMD());  //(병원)사업자번호 중복검사 페이지로 이동
	//	cont.put("/HHospitalMain.do", new HHospitalMainCMD()); //병원회원 메인페이지 로 이동
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
		cont.put("/HDoctorAddVerify.do", new HDoctorAddVerifyCMD()); // 의사추가추가페이지로 이동 <추가했습니다 - 태영>
	
		
		//(병원)휴일 설정 페이지 로 이동
		//(의사)휴일 설정 페이지 로 이동
		 
		//로그인 시 넘어가는 .do화면 (임시-이다연)
		cont.put("/LoginTest.do",new LoginTestCMD());
		//로그인 페이지로 넘어가는 .do 화면(임시-이다연)
		cont.put("/LoginTestGo.do",new LoginTestGoCMD());
		
		//일반회원관련 페이지
		cont.put("/SSickSignupAction.do", new SSickSignupActionCMD()); //S1 일반회원 회원가입 페이지 로 이동 
		cont.put("/SSickSignup.do", new SSickSignupCMD()); //일반회원 회원가입 DB처리
		cont.put("/SSickMemberIdCheckAction.do", new SSickMemberIdCheckActionCMD());  //(일반회원)ID 중복검사 페이지로 이동
		cont.put("/SSickMain.do", new SickMainCMD()); 		//S2일반회원 메인페이지로 이동
		cont.put("/SSickMemModify.do", new SSickMemModifyCMD()); //S3 회원정보 수정 페이지로 이동
		cont.put("/SSickMemModifyGo.do", new SSickMemberModifyGoCMD()); //일반회원 회원정보수정 DB처리
		cont.put("/SSickWjqtnwmd.do", new SSickWjqtnwmdCMD()); //S4 접수증 페이지(QR)
		cont.put("/SSickWjqtnCreate.do", new SSickWjqtnCreateCMD()); //S5 접수증 생성 페이지
	//	cont.put("/S.do", new CMD()); //S6 약정보 조회 페이지
		cont.put("/SSearchList.do", new SearchListCMD()); //S7 검색 결과 리스트 페이지
		cont.put("/SHospitalInfo.do", new SHospitalInfoCMD()); //S8 병원정보 상세조회 페이지
		cont.put("/SsearchMain.do", new SsearchMainCMD()); //S9~S14 메인 검색 페이지
		cont.put("/ShospitalInfo.do", new SHospitalInfoCMD()); //S15 필터 페이지
		
		cont.put("/SReviewWrite.do", new SReviewWriteCMD()); //S17 리뷰 작성 페이지
		cont.put("/SReviewMylist.do", new SReviewMylistCMD()); //S18 내가 쓴 리뷰 리스트 페이지
		cont.put("/SSickHealModify.do", new SSickHealModifyCMD()); //S19 건강정보 수정 페이지로 이동
		// cont.put("/SSickHealModifyGo.do", new SSickHealModifyGoCMD()); //건강정보 수정 DB 처리
		
		
		cont.put("/SMedDoneDetail.do", new SMedDoneDetailCMD()); // 진료이력 상세 페이지로 이동
		cont.put("/SMedADoneList.do", new SMedADoneListCMD()); //S16 진료이력 리스트(전체) 페이지로 이동
		cont.put("/SMedTDoneList.do", new SMedTDoneListCMD()); //S16 진료이력 리스트(접수) 페이지로 이동
		cont.put("/SMedRDoneList.do", new SMedRDoneListCMD()); //S16 진료이력 리스트(예약) 페이지로 이동
		
		cont.put("/SRqDetail.do", new SRqDetailCMD()); //S21 진료신청 완료/현황 상세/취소 페이지로 이동
		cont.put("/ajax/SGetRqstInfo.do", new SGetRqstInfoCMD()); //S21 진료신청 완료/현황 상세/취소 페이지에 값 가져오기
		cont.put("/ajax/SGetWaitingCnt.do", new SGetWaitingCntCMD()); // 진료신청상세 내용에 대기자수 표시 추가(시간별로 변화하게)		
		
		cont.put("/SMedTBeforeMedList.do", new SMedTBeforeMedListCMD()); //S20 진료신청현황 리스트(접수) 페이지로 이동
		cont.put("/SMedRBeforeMedList.do", new SMedRBeforeMedListCMD()); //S22 진료신청현황 리스트(예약) 페이지로 이동
		cont.put("/SMedCBeforeMedList.do", new SMedCBeforeMedListCMD()); //S23 진료신청현황 리스트(취소) 페이지로 이동
		cont.put("/SMedABeforeMedList.do", new SMedABeforeMedListCMD()); //S27 진료신청현황 리스트(전체) 페이지로 이동
		
		cont.put("/SCancelRq.do", new SCancelRqCMD()); //진료신청 취소처리 로직
		
		cont.put("/SAroundMap.do", new SAroundMapCMD()); //S23 주변 병원/약국 페이지
		cont.put("/ShospitalInfoForTest.do", new ShospitalInfoForTestCMD()); //test용페이지(병원상세페이지로 이동)
		cont.put("/SResRequest.do", new SResRequestCMD()); //S24 예약신청 페이지로 이동
		cont.put("/STmrRequest.do", new STmrRequestCMD()); //S28 당일접수 신청 페이지로 이동
		
		cont.put("/ajax/SGetHosStt.do", new SGetHosStt()); //접수가 가능한지 1차검사위한 값(접수)
		cont.put("/ajax/SGetDrList.do", new SGetDrListAjaxCMD()); //의사리스트 출력(접수예약공통)
		cont.put("/ajax/SGetDrHldyList.do", new SGetDrHldlyListAjaxCMD()); //의사휴일(접수예약공통)
		cont.put("/ajax/SGetDrNotOnDutyList.do", new SGetDrNotOnDutyListAjaxCMD()); //당일휴일인 의사목록(접수)
		cont.put("/ajax/SGetHosHldyList.do", new SGetHosHldyListAjaxCMD()); //병원휴일(예약)
		cont.put("/ajax/SGetUnselectableTime.do", new SGetUnselectableTime()); //병원 영업시간 및 해당 시간 기존 예약건 여부 확인 (예약)
		
		cont.put("/STmrSelectDcry.do", new STmrSelectDcryCMD()); // S33 (진료신청시)기록물 선택 페이지로 이동
		cont.put("/SInsertRes.do", new SInsertResCMD()); //예약신청 입력처리 후 완료 페이지(접수/예약)로 이동
		cont.put("/SInsertTmr.do", new SInsertTmrCMD()); //접수신청 입력처리 후 완료 페이지(접수/예약)로 이동
		
		//cont.put("/SRqDone.do", new SRqDoneCMD()); //S29 진료신청 완료 페이지(접수/예약)로 이동
		
		cont.put("/SBookmark.do", new SBookmarkCMD()); //S30 관심병원 리스트 페이지
		cont.put("/SSickMediaList.do", new SSickMediaListCMD()); //S31 기록물-기록물 리스트페이지
		cont.put("/SSickDocuList.do", new SSickDocuListCMD()); //S32 서류-기록물 리스트페이지 
		cont.put("/SSickDetailList.do", new SSickDetailListCMD()); //S34 기록물 상세 페이지
		cont.put("/SSickUpload.do", new SSickUploadCMD()); //S35 기록물 업로드 페이지
	//	cont.put("/S.do", new CMD()); //S36 병원 신고 페이지
	//	cont.put("/.do", new CMD()); // 알림아이콘
		
		//공통
	//	cont.put("/Alllogin.do", new AllloginCMD()); //로그인 페이지
	//	cont.put("/.do", new CMD()); //로그아웃 페이지
	//	cont.put("/.do", new CMD()); //오류페이지
	//	cont.put("/.do", new CMD()); //위젯
		
	
		cont.put("/ajax/LocaseachAjaxCMD.do", new LocaseachAjaxCMD()); //지역코드 가져오는 ajax
		cont.put("/ajax/CategoriAjaxCMD.do", new CategoriAjaxCMD()); //카테고리코드 가져오는 ajax

		cont.put("/SRqDetail.do", new SRqDetailCMD()); // S21 진료신청현황 상세/취소 페이지로 이동

		cont.put("/SMedTBeforeMedList.do", new SMedTBeforeMedListCMD()); // S20 진료신청현황 리스트(접수) 페이지로 이동
		cont.put("/SMedRBeforeMedList.do", new SMedRBeforeMedListCMD()); // S22 진료신청현황 리스트(예약) 페이지로 이동
		cont.put("/SMedCBeforeMedList.do", new SMedCBeforeMedListCMD()); // S23 진료신청현황 리스트(취소) 페이지로 이동
		cont.put("/SMedABeforeMedList.do", new SMedABeforeMedListCMD()); // S27 진료신청현황 리스트(전체) 페이지로 이동

		cont.put("/SCancelRq.do", new SCancelRqCMD()); // 진료신청 취소처리 로직

		cont.put("/SAroundMap.do", new SAroundMapCMD()); // S23 주변 병원/약국 페이지

		cont.put("/SResRequest.do", new SResRequestCMD()); // S24 예약신청 페이지로 이동
		cont.put("/STmrRequest.do", new STmrRequestCMD()); // S28 당일접수 신청 페이지로 이동
		cont.put("/STmrSelectDcry.do", new STmrSelectDcryCMD()); // S33 (진료신청시)기록물 선택 페이지로 이동

		cont.put("/SInsertRes.do", new SInsertResCMD()); // 예약신청 입력처리 로직
		cont.put("/SInsertTmr.do", new SInsertTmrCMD()); // 접수신청 입력처리 로직

		cont.put("/SBookmark.do", new SBookmarkCMD()); // S30 관심병원 리스트 페이지
		cont.put("/SSickMediaList.do", new SSickMediaListCMD()); // S31 기록물-기록물 리스트페이지
		cont.put("/SSickDocuList.do", new SSickDocuListCMD()); // S32 서류-기록물 리스트페이지 
		cont.put("/SSickDetailList.do", new SSickDetailListCMD()); // S34 기록물 상세 페이지
		cont.put("/SSickUpload.do", new SSickUploadCMD()); // S35 기록물 업로드 페이지
		
		cont.put("/SDeclaration.do", new SDeclarationCMD()); //S36 병원 신고 페이지로 이동
		cont.put("/SDeclarationInsert.do", new SDeclarationInsertCMD()); // 병원신고처리 후 목록으로
		// cont.put("/.do", new CMD()); // 알림아이콘

		// 공통
		// cont.put("/.do", new CMD()); //로그인 페이지
		// cont.put("/.do", new CMD()); //로그아웃 페이지
		// cont.put("/.do", new CMD()); //오류페이지
		// cont.put("/.do", new CMD()); //위젯

		/*
		 * cont.put("/ajax/DeleteUsers.do", new DeleteUsers());
		 * cont.put("/ajax/GetUsers.do", new GetUsers());
		 * cont.put("/ajax/InsertUsers.do", new InsertUsers());
		 * cont.put("/ajax/UpdateUsers.do", new UpdateUsers()); cont.put("/Upload.do",
		 * new FileUpload()); cont.put("/GetDeptCnt.do", new GetDeptCnt());
		 */
		cont.put("/ajax/HosSttAjaxCMD.do", new HosSttAjaxCMD()); // 병원상태 업데이트하는 ajax
		cont.put("/ajax/ReviewDeleteAjaxCMD.do", new ReviewDeleteAjaxCMD()); // ?? 삭제하는 ajax
		cont.put("/ajax/LocaseachAjaxCMD.do", new LocaseachAjaxCMD()); // 지역코드 가져오는 ajax
		cont.put("/ajax/CategoriAjaxCMD.do", new CategoriAjaxCMD()); // 카테고리코드 가져오는 ajax
		cont.put("/ajax/ReviewInsrtAjaxCMD.do", new ReviewInsrtAjaxCMD()); // 리뷰 insert여부를 가져오는 ajax

	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.substring(context.length());
		System.out.println("uri정보:" + uri);
		System.out.println("context정보:" + context);
		System.out.println("path정보:" + path);
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
