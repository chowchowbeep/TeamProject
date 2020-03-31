package command;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kjr.HealthInfoDAO;
import kjr.hosCodeDAO;

public class hosCodeUpdate implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String path ="HHospitalMymenu.do";
		HttpSession session = request.getSession(true);
		String sessionId = (String)session.getAttribute("memberId") ;//세션에서 회원 id를 당겨와서 넣어야함 *현재 임시로 아이디 입력
		String APA[] = request.getParameterValues("APA");
		String TEMA[] = request.getParameterValues("TEMA");
		String SUB[] = request.getParameterValues("SUB");
		hosCodeDAO dao = new hosCodeDAO();
		System.out.println("제발ㄹ나와주라요요요요ㅛ유ㅠㅠㅠㅠㅠㅠ ");
		//apa,tema,sub로 등록되어있는 데이터 삭제 
		dao.delete(sessionId);
		
		//선택한 apa,tema,sub데이터 등록
		String apa="";
		if(APA != null) {
			for(int i=0;i<APA.length;i++ ) {
				apa = APA[i];
				System.out.println("왜 apa안나오ㅑㄴ구ㅠ ㅠㅠㅠㅠ "+apa);
				dao.insert(sessionId, apa);
			}
		}
		
		String tema="";
		if(TEMA != null) {
			for(int i=0;i<TEMA.length;i++ ) {
				tema = TEMA[i];
				System.out.println("왜 tema안나오ㅑㄴ구ㅠ ㅠㅠㅠㅠ "+tema);
				dao.insert(sessionId, tema);
			}
		}
		String sub="";
		if(SUB != null) {
			for(int i=0;i<SUB.length;i++ ) {
					sub = SUB[i];
					System.out.println("왜 sub안나오ㅑㄴ구ㅠ ㅠㅠㅠㅠ "+sub);
					dao.insert(sessionId, sub);
			}
		}
		return "redirect:"+path;
	}


}
