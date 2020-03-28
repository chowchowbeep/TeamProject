package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import kjr.HosmemberDAO;
import lastdto.hosMemberDTO;

public class HhosModifyCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String hosId ="hos3";
		String path ="HHospitalProfile.do";
		String hosName = request.getParameter("hosName") ;
		String hosPw = request.getParameter("hosPw");
		String hosAddr = request.getParameter("addr");
		String hosPhone = request.getParameter("hosPhone");
		String hosBizno = request.getParameter("hosBizno");
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		String hosBizTime = start+end;
		System.out.println("++"+hosBizTime);
		if(hosBizTime.equals("0000")) {
			hosBizTime = request.getParameter("hosBizTime");
			System.out.println("0000>>>>"+hosBizTime);
		}else {
			hosBizTime = start+"~"+end;
			System.out.println("hosBizTime>>>>"+hosBizTime);
		};
		hosMemberDTO dto = new hosMemberDTO( hosId,  hosBizno,  hosName,  hosPhone,  hosPw,  hosAddr, hosBizTime);
		HosmemberDAO dao = new HosmemberDAO();
		dao.update(dto);
		
		
		return path;
	}

}
