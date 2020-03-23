package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dto.mediRqstDTO;
import kcr.MediRqdetailDAO;
import lastdto.mediRqdetailDTO;

public class SCancelRqCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//취소처리후 목록페이지로 이동시킴
		
		//값받아오기 rqstNo/ id세션객체 수정
		String sicId = request.getParameter("id");
		int rqstNo = Integer.parseInt(request.getParameter("rqstNo"));
		System.out.println("받아온 진료신청번호 = "+ rqstNo+", 환자id= "+sicId);
		
		MediRqdetailDAO dao = new MediRqdetailDAO();
		
		
		// 진료신청취소 _ 프로시저 콜하는 메소드
		// 진료신청의 진료타입을 환자취소로 //취소시 상태정보도 진료 전,후 없이 취소로 변경//
		// 취소이력에 추가됨 //세번 취소하면 페널티 처리(페널티 테이블에 오름. 회원상태 페널티)
		dao.CancelAndPenalty(sicId, rqstNo);

		
		String path = "SMedBeforeMedList.do";
		return path;
	}

}
