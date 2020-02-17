package kjr.cmd;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import dto.BookmarkDto;
import dto.HealthInfoDto;
import kjr.BookmarkDAO;
import kjr.HealthInfoDAO;

public class SickMainCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="aView/kjr/sick_main.jsp"; //일반회원페이지로 이동 
	
		//건강정보출력1. 건강정보는 항목 아이콘-값 아이콘 출력, 비고 출력
		HealthInfoDAO hInfo= new HealthInfoDAO();
		
		String id = "sic1";//세션에서 id를 당겨와서 넣어야함 *현재 임시로 아이디 입력
		HealthInfoDto hIndto = hInfo.select(id);
		System.out.println(hIndto.toString());
		/*
		System.out.println("SickMainCMD클래스 sicid : "+hIndto.getSicId());	
		System.out.println("SickMainCMD클래스 hthtc : "+hIndto.getHtEtc());
		http://localhost:9099/tem3/SickMain.do
		*/
		request.setAttribute("hIndto",hIndto);
		
		
		//병원검색
		
		/*
		//관심병원리스트 출력 4. 등록된 관심병원이 없을 경우GPS기준 가까운병원을 추천병원으로 출력
		BookmarkDAO bookDAO =new BookmarkDAO();
		ArrayList<BookmarkDto> starList; 
		starList = bookDAO.select(id);
		for(BookmarkDto dto :starList) {
			System.out.println(dto.getHosId());
		}
		request.setAttribute("starList",starList);
		*/
		return path;
	}
	

}
