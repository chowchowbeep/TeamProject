package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcr.MediRqdetailDAO;
import lastdto.mediRqdetailDTO;
import net.sf.json.JSONObject;

public class SGetRqstInfoCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		MediRqdetailDAO dao = new MediRqdetailDAO(); // 최신신청건select
		mediRqdetailDTO dto = new mediRqdetailDTO();
		int rqstNo = 0;
		String identifier = null;
		String sicId = (String) request.getSession().getAttribute("memberId");
		identifier = request.getParameter("identifier"); // 가장최근 insert한 값을 필요로 할 때 넘김
		System.out.println(sicId + ", " + identifier + "=====================");
		
		try {
			rqstNo = Integer.parseInt(request.getParameter("rqstNo"));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (identifier != null && identifier != "") { 
			// 진료신청완료페이지를 통해 -상세정보출력을 원하는 경우.
			// 해당 일반회원의 가장최근 insert된 진료신청 상세내용 가져와서 넘기기
			dto = dao.getHotRqst(sicId);
		} else { 
			// 진료신청현황목록페이지를 통해 - 상세정보출력을 원하는 경우.
			// 목록에서 클릭한 항목의 rqstNo를 통해 단건 조회
			dto = dao.selectOne(rqstNo);
		}

		System.out.println("가져온dto =" + dto);

		return "ajax:" + JSONObject.fromObject(dto);
	}

}
