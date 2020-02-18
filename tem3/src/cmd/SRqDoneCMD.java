package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kcrDAO.MediRqstDAO;
import lastdto.mediRqstDTO;

public class SRqDoneCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//S29 진료신청 완료 페이지(접수/예약)
		
		MediRqstDAO dao = new MediRqstDAO();
		mediRqstDTO dto = new mediRqstDTO();
		
		//나중에 세션값 받아오는 것으로 수정할 .
		dto.setSicId(request.getParameter("id"));
		System.out.println(request.getParameter("id"));
		int drNo = Integer.parseInt(request.getParameter("ARTR_NO"));
		System.out.println(drNo);
		dto.setArtrNo(drNo);
		dto.setHosId((String)request.getParameter("HOS_ID"));
		int dcNo = Integer.parseInt(request.getParameter("DCRY_NO"));
		System.out.println(dcNo);
		dto.setDcryNo(dcNo);
		dto.setMsg((String)request.getParameter("MSG"));
		
		int r = dao.tmrInsert(dto);
		System.out.println( r + "건 입력완료");
		
		String path ="aView/chorong/rq_done.jsp"; 
		
		
		return path;
	}

}
