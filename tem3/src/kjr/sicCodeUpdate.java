package kjr;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;

public class sicCodeUpdate implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path ="SSickMain.do";
		HttpSession session = request.getSession(true);
		String sessionId = (String)session.getAttribute("memberId") ;//세션에서 회원 id를 당겨와서 넣어야함 *현재 임시로 아이디 입력
		String sicId = sessionId;
//		String HSTCS[] = request.getParameterValues("HSTCS");//사용안함
		String CHRDIS[] = request.getParameterValues("CHRDIS");
		String MEDI[] = request.getParameterValues("MEDI");
		String bdp = request.getParameter("BDP");
		String ALLRGY[] = request.getParameterValues("ALLRGY");
		HealthInfoDAO dao = new HealthInfoDAO();
		HashMap<String,String> map = new HashMap<>();
		String chrdis="";
		for(int i=0;i<CHRDIS.length;i++ ) {
			if(i==(CHRDIS.length)-1) {
				System.out.println(i);
				chrdis += CHRDIS[i];
			}else {
			chrdis += CHRDIS[i]+',';
			}
		}
	
		
		String medi="";
		for(int i=0;i<MEDI.length;i++ ) {
			if(i==(MEDI.length)-1) {
				System.out.println(i);
				medi += MEDI[i];
			}else {
				medi += MEDI[i]+',';
			}
		}
		
		String allrgy="";
		for(int i=0;i<ALLRGY.length;i++ ) {
			if(i==(ALLRGY.length)-1) {
				System.out.println(i);
				allrgy += ALLRGY[i];
			}else {
				allrgy += ALLRGY[i]+',';
			}
		}
		map.put("chrdis",chrdis);
		map.put("medi",medi);
		map.put("bdp",bdp);
		map.put("allrgy",allrgy);
		
		/*
		map.put("medi",Arrays.toString(MEDI));
		map.put("bdp",bdp);
		map.put("allrgy",Arrays.toString(ALLRGY));
		
		System.out.println("chrdis"+Arrays.toString(CHRDIS));
		System.out.println("medi"+Arrays.toString(MEDI));
		System.out.println("allrgy"+Arrays.toString(ALLRGY));
		*/
		dao.delete(sicId);
		dao.insert(sicId,map);
		return path;
	}

}
