package kjr.cmd;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import lastdto.hosMemberDTO;
import lastdto.sListCodeDTO;
import kjr.HosmemberDAO;
import kjr.SearchDAO;

public class SearchListCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="aView/kjr/search_list.jsp"; //S7 검색 결과 리스트 페이지
		HttpSession session = request.getSession(true);
		String sessionId = (String)session.getAttribute("memberId"); 
		
		ArrayList<hosMemberDTO> hosList = new ArrayList<>();
		HosmemberDAO hosDAO = new HosmemberDAO();
		SearchDAO keywdDAO = new SearchDAO();
		String hosName=request.getParameter("hosName");
		String areaCode= request.getParameter("areaCode");
		String[] cateCode= request.getParameterValues("cateCode");
		String orderby = request.getParameter("oderby");
		String diam= request.getParameter("diam");
		String filter= request.getParameter("filter");
		sListCodeDTO sCodeDTO = new sListCodeDTO(hosName,areaCode,cateCode,orderby,diam,filter);
		////////////////////////////////////////////////////////////////////////////넘어오는 값 확인
		
		System.out.println("1.hosName은??"+hosName);
		if(hosName!=null && !hosName.isEmpty()) { //병원이름으로 검색했을경우
			//if(sCodeDTO.getOderby()!=null&&!sCodeDTO.getOderby().isEmpty())이거 왜 넣어놓은거지? 일단 적어둠ㅋㅋ 
			hosList = hosDAO.select(hosName); //병원이름으로 병원정보 검색
			System.out.println("1.hosName으로 검색"+hosName);
		}else {				//태그(지역,지하철,카테고리)로 검색했을경우
			System.out.println("키워드검색");
			hosList = keywdDAO.select(sCodeDTO); //지역, 카테고리 코드로 병원 정보를 가져옴
			
	}	
		
		
		request.setAttribute("sCodeDTO",sCodeDTO);
		request.setAttribute("hosList",hosList);
		return path;
	}

}
