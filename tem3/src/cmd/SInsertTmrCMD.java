package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcrDAO.MediRqstDAO;
import lastdto.mediRqstDTO;

public class SInsertTmrCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
				//접수신청 입력처리 로직
		
				MediRqstDAO dao = new MediRqstDAO();
				mediRqstDTO dto = new mediRqstDTO();
				
				// 나중에 세션값 받아오는 것으로 수정할 것
				dto.setSicId(request.getParameter("id"));
				int drNo = Integer.parseInt(request.getParameter("ARTR_NO"));
				dto.setArtrNo(drNo);
				dto.setHosId(request.getParameter("HOS_ID"));
				int dcNo = Integer.parseInt(request.getParameter("DCRY_NO"));
				dto.setDcryNo(dcNo);
				dto.setMsg(request.getParameter("MSG"));
				dto.setIfTime(request.getParameter("IFTIME"));
				
				
				
				int r = dao.tmrInsert(dto);
				System.out.println( r + "건 입력완료");
				System.out.println("의사번호"+request.getParameter("ARTR_NO"));
				System.out.println("병원id"+request.getParameter("HOS_ID"));
				System.out.println("도착예정시간"+request.getParameter("IFTIME"));
				
				String path = "/SRqDone.do";
				return path;
	}

}
