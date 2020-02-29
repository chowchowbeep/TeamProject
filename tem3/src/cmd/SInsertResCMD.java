package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcrDAO.MediRqdetailDAO;
import lastdto.mediRqdetailDTO;

public class SInsertResCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 예약신청 입력처리 로직

		// 메소드 호출할 때마다 getConnection필요하기 때문에 메소드별로 생성
		// 다른방법? DAO를 분리해야 하나?? 프로시저를 만들어야 하나?? 수정시 결정할 것.
		// 또는 한 메소드 내에서 sql 두개 실행하기로 수정 
		
		MediRqdetailDAO dao1 = new MediRqdetailDAO(); //신청내용insert
		MediRqdetailDAO dao2 = new MediRqdetailDAO(); //최신신청건select
		
		
		mediRqdetailDTO InDto = new mediRqdetailDTO();
		mediRqdetailDTO dto = new mediRqdetailDTO();

		int dcNo = 0;
		int drNo = 0;
		String sicId;
		String resDt;
		String resTmH;
		String resTmM;
		

		// 나중에 세션값 받아오는 것으로 수정할 것
		sicId = request.getParameter("id");
		InDto.setSicId(sicId);

		InDto.setHosId(request.getParameter("hosId"));
		
		// res_dttm속성은 TO_DATE('20200311152300', 'YYYYMMDDHH24MISS') 형식으로 값이 들어가야 함
		// ResDt와 ResTm을 DAO에서 붙여서 값을 insert할 것임.
		
		resDt = "20200301";//임시값. datepicker구현 후 수정
		//resDt = request.getParameter("");
		resTmH = request.getParameter("hour");
		resTmM = request.getParameter("minute");
		InDto.setResDt(resDt);
		InDto.setResTm(resTmH+resTmM+"00");
	
		
		drNo = Integer.parseInt(request.getParameter("artrNo"));
		InDto.setArtrNo(drNo);

		// 기록물 값이 선택되지 않고 파라미터를 get할 때 발생하는 Exception처리
		try {
			dcNo = Integer.parseInt(request.getParameter("dcryNo"));
			InDto.setDcryNo(dcNo);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		InDto.setMsg(request.getParameter("msg"));

		System.out.println("파라미터로 구성한 InsertDto = " + InDto.toString());
		
		
		// 신청내용insert
		dao1.resInsert(InDto);
		// 결과페이지 출력을 위한 부분_ 가장최근 insert된 상세내용 가져와서 넘기기
		dto = dao2.getHotRqst(sicId);
		System.out.println("가져온dto ="+dto);

		request.setAttribute("id", sicId);
		request.setAttribute("dto", dto);
		request.setAttribute("isRqDonePage", "yes"); //rq_detail에서 신청완료페이지표시, 신청내용상세페이지 표시를 결정
		
		String path = "aView/chorong/rq_detail.jsp";
		return path;
	}

}
