package cmd;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import lastdto.hosMemberDTO;
import lastdto.searchDTO;
import leedy.hosSignupDAO;

public class HHospitalSignupCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

			
		List<searchDTO> list = new ArrayList<>();
		hosMemberDTO hdto = new hosMemberDTO();
		hosSignupDAO dao = new hosSignupDAO();

		int i;
		String[] code = request.getParameterValues("code");

		for (i=0;i<code.length;i++) {
			System.out.println(code[i]);
			searchDTO dto = new searchDTO();
			dto.setHosId(request.getParameter("hos_id"));
			dto.setCode(code[i]);
			list.add(dto);
			System.out.println(i + "번째 searchDTO는 " + dto.toString());
		}
		/*
		 * for (i = 0; i < list.size(); i++) { searchDTO dto = new searchDTO(); dto =
		 * list.get(i); System.out.println(i + "번째 searchDTO는 " + dto.toString()); }
		 */
		String hos_phone= request.getParameter("hos_phone_1")+"-"+request.getParameter("hos_phone_2")+"-"
		+request.getParameter("hos_phone_3");
		
		String hos_bizno= request.getParameter("hos_bizno_1")+"-"+request.getParameter("hos_bizno_2")+"-"
				+request.getParameter("hos_bizno_3");
		
		// 파라미터 받아오기?
		hdto.setHosId(request.getParameter("hos_id"));
		hdto.setHosBizno(hos_bizno);
		hdto.setHosName(request.getParameter("hos_name"));
		hdto.setHosPhone(hos_phone);
		hdto.setHosPw(request.getParameter("hos_pw"));
		hdto.setHosAddr(request.getParameter("hos_addr"));
		hdto.setHosBizTime(request.getParameter("biz_time_1")+"~"+
				request.getParameter("biz_time_2"));
		System.out.println(hdto.toString());

		int r = dao.hosInsert(hdto);
		int n = dao.searchInsert(list);
		
//인덱스페이지에서 버튼 눌렀을 때 회원
		return "redirect:ToLoginPage.do";
	}
}
