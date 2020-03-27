package cmd;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import lastdto.artrInfoDTO;
import leedy.HosFileUploadDAO;

public class HHospitalUploadCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//System.out.println("닷두우우우우우우우우우ㅜ우웅우우우우ㅜ우우");
		HosFileUploadDAO dao = new HosFileUploadDAO();
		artrInfoDTO dto = new artrInfoDTO();
		
		String hosId = "hos1"; //세션에서 받아와야 하는데 없으니까 임의로 사용자 지정했음
		
		//request.setAttribute("sic_id", request.getParameter("sic_id"));
	//	request.setAttribute("hos_id", request.getParameter("hos_id"));
		
		//사용하려는 DAO의 메소드
		ArrayList<artrInfoDTO> list = new ArrayList<artrInfoDTO>();
		list = dao.selectArtr(hosId);
		request.setAttribute("list", list); //앞에 것 jsp에서 부를 이름, 뒤에건 dao 값을 넘길 변수
		
		String path ="aView/leedy/hospital_upload.jsp"; //기록물 업로드 페이지로 이동
		
		return path;
	}

}
