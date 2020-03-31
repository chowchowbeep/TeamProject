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
		String path ="SSickMain.do";
		HttpSession session = request.getSession(true);
		String sessionId = (String)session.getAttribute("memberId") ;//세션에서 회원 id를 당겨와서 넣어야함 *현재 임시로 아이디 입력
		String APA[] = request.getParameterValues("APA");//사용안함
		String TEMA[] = request.getParameterValues("TEMA");
		String SUB[] = request.getParameterValues("SUB");
		
		HashMap<String,String> map = new HashMap<>();
		String apa="";
		for(int i=0;i<APA.length;i++ ) {
			if(i==(APA.length)-1) {
				System.out.println(i);
				apa += APA[i];
			}else {
				apa += APA[i]+',';
			}
		}
	
		
		String tema="";
		for(int i=0;i<TEMA.length;i++ ) {
			if(i==(TEMA.length)-1) {
				System.out.println(i);
				tema += TEMA[i];
			}else {
				tema += TEMA[i]+',';
			}
		}
		
		String sub="";
		for(int i=0;i<SUB.length;i++ ) {
			if(i==(SUB.length)-1) {
				System.out.println(i);
				sub += SUB[i];
			}else {
				sub += SUB[i]+',';
			}
		}
		map.put("apa",apa);
		map.put("tema",tema);
		map.put("sub",sub);
		
		System.out.println("ㅇㅏㅇ파ㅇㅏㅏㅏㅏㅏㅏㅏㅏ"+apa);
		System.out.println("테 ㅁ ㅏ ㅏㅏㅏㅏㅏ"+tema);
		System.out.println("ㅇㅇㅅ ㅓ ㅂ ㅡ ㅇ"+sub);
		hosCodeDAO dao = new hosCodeDAO();
		//dao.delete(sessionId);
		//dao.insert(sessionId,map);
		return path;
	}


}
