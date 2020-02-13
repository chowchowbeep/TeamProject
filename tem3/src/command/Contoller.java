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
import cmd.HMenubarCMD;
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
import cmd.SMenubarCMD;
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
		/*
		//병원회원관련 페이지
		cont.put("/.do", new CMD()); //병원회원용 회원가입 페이지 로 이동
		cont.put("/.do", new CMD()); //병원회원 메인페이지 로 이동
		cont.put("/.do", new CMD()); //알림 팝업 페이지 로이동
		cont.put("/.do", new CMD()); //진료신청 현황 리스트 페이지 로 이동
		cont.put("/.do", new CMD()); //진료상세정보  페이지 로 이동
		cont.put("/.do", new CMD()); //기록물 업로드 페이지  로 이동
		cont.put("/.do", new CMD()); //기록물 조회 페이지  로 이동
		cont.put("/.do", new CMD()); //H8 회원정보 검색 페이지  로 이동
		cont.put("/.do", new CMD()); //H9 회원정보 검색 리스트 페이지  로 이동
		cont.put("/.do", new CMD()); //H10 회원정보 검색 결과 상세 페이지  로 이동
		cont.put("/.do", new CMD()); //H11 마이메뉴 페이지  로 이동
		cont.put("/.do", new CMD()); //H12 병원회원 수정 페이지  로 이동
		*/
		
		cont.put("/HDoctorlist.do", new HDoctorlistCMD()); //H13 의사 리스트 페이지 로 이동
		cont.put("/HDoctorAdd.do", new HDoctorAddCMD()); //H14 의사추가페이지 로 이동
		
		/*
		cont.put("/.do", new CMD()); //(병원)휴일 설정 페이지 로 이동
		cont.put("/.do", new CMD()); //(의사)휴일 설정 페이지 로 이동
		 
		
		//일반회원관련 페이지
		cont.put("/.do", new CMD()); //S1 일반회원 회원가입 페이지 로 이동 
		cont.put("/SickMain.do", new SickMainCMD()); 		//S2일반회원 메인페이지로 이동
		cont.put("/.do", new CMD()); //S3 회원정보 수정 페이지
		cont.put("/.do", new CMD()); //S4 접수증 페이지(QR)
		cont.put("/.do", new CMD()); //S5 접수증 생성 페이지
		cont.put("/.do", new CMD()); //S6 약정보 조회 페이지
		cont.put("/SearchList.do", new SearchListCMD()); //S7 검색 결과 리스트 페이지
		cont.put("/.do", new CMD()); //S8 병원정보 상세조회 페이지
		cont.put("/.do", new CMD()); //S9~S14 메인 검색 페이지
		cont.put("/.do", new CMD()); //S15 필터 페이지
		cont.put("/.do", new CMD()); //S16 진료이력 리스트 페이지
		cont.put("/.do", new CMD()); // 진료이력 상세 페이지
		cont.put("/.do", new CMD()); //S17 리뷰 작성 페이지
		cont.put("/.do", new CMD()); //S18 내가 쓴 리뷰 리스트 페이지
		cont.put("/.do", new CMD()); //S19 건강정보 수정 페이지
		cont.put("/.do", new CMD()); //S20 진료신청현황 리스트 페이지
		cont.put("/.do", new CMD()); //S21 진료신청현황 상세/취소 페이지(당일접수)
		cont.put("/.do", new CMD()); //S22 진료신청현황 상세/취소 페이지(예약)
		cont.put("/.do", new CMD()); //S23 주변 병원/약국 페이지
		cont.put("/.do", new CMD()); //S24 예약신청 페이지
		cont.put("/.do", new CMD()); //S25 예약날짜 선택 페이지
		cont.put("/.do", new CMD()); //S26 예약시간 선택 페이지
		cont.put("/.do", new CMD()); //S27 예약완료 페이지
		cont.put("/.do", new CMD()); //S28 당일접수 신청 페이지
		cont.put("/.do", new CMD()); //S29 당일접수 완료 페이지
		cont.put("/.do", new CMD()); //S30 관심병원 리스트 페이지
		cont.put("/.do", new CMD()); //S31 기록물-기록물 리스트페이지
		cont.put("/.do", new CMD()); //S32 서류-기록물 리스트페이지
		cont.put("/.do", new CMD()); //S33 (진료신청시)기록물 선택 페이지
		cont.put("/.do", new CMD()); //S34 기록물 상세 페이지
		cont.put("/.do", new CMD()); //S35 기록물 업로드 페이지
		cont.put("/.do", new CMD()); //S36 병원 신고 페이지
		

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
