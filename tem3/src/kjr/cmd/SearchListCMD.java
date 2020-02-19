package kjr.cmd;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import lastdto.hosMemberDTO;
import kjr.HosmemberDAO;
import kjr.SearchDAO;

public class SearchListCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="aView/kjr/search_list.jsp"; //S7 검색 결과 리스트 페이지
		////////////////////////////////////////////////////////////////////////////넘어오는 값 확인
		String hosName; 	//검색한 병원이름
		String[] cateCode;	//카테고리 코드
		String areaCode; 		//지역(지하철)코드
		ArrayList<hosMemberDTO> hosList = new ArrayList<>();
		HosmemberDAO hosDAO = new HosmemberDAO();
		SearchDAO keywdDAO = new SearchDAO();
		hosName=request.getParameter("hosName");
		areaCode= request.getParameter("areaCode");
		cateCode= request.getParameterValues("cateCode");
		System.out.println("병원명 "+hosName);
		System.out.println("지역코드"+areaCode);
		if(cateCode!=null){
			for(String cd : cateCode) {
				System.out.println("카테고리"+cd);
			}
		}
		
		if(hosName!=null) { //병원이름으로 검색했을경우
			hosList = hosDAO.select(hosName); //병원이름으로 병원정보 검색
		}else {				//태그(지역,지하철,카테고리)로 검색했을경우
			if(areaCode!=null && cateCode!=null) { 
				hosList = hosDAO.select();	//지역,카테고리 코드가 안넘어온경우 전체검색
			}else {
				hosList = keywdDAO.select(cateCode,areaCode); //지역, 카테고리 코드로 병원 정보를 가져옴 
			}
		}	
		
		request.setAttribute("hosList",hosList);
		return path;
	}

}
