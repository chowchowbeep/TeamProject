package command;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kjr.cmd.SickMainCMD;
import kjr.cmd.HospitalInfoCMD;

@WebServlet("*.do")
public class Contoller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Map<String, Command> cont = new HashMap<>(); //Map<path,command패키지의 Command를 implements한 패키지> 
	
	public Contoller() {
		super();
	}
	
	
	public void init(ServletConfig config) throws ServletException {
		cont.put("/SickMain.do", new SickMainCMD()); 			//회원메인페이지로 이동  
		cont.put("/HospitalInfo.do", new HospitalInfoCMD());	//병원상세페이지로 이동
		
		
		
		
		cont.put("/doctorlist.do", new DoctorList());
/*		cont.put("/ajax/DeleteUsers.do", new DeleteUsers());
		cont.put("/ajax/GetUsers.do", new GetUsers());
		cont.put("/ajax/InsertUsers.do", new InsertUsers());
		cont.put("/ajax/UpdateUsers.do", new UpdateUsers());
		cont.put("/Upload.do", new FileUpload());
		cont.put("/GetDeptCnt.do", new GetDeptCnt());
*/
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.substring(context.length());
		System.out.println("uri정보:"+uri);
		System.out.println("context정보:"+context);
		System.out.println("path정보:"+path);

		Command command = cont.get(path); // 이동할 path를 받음
		if (command != null) {
			String page = command.execute(request, response); // 해당패스를 처리할 클래스안에서 처리후)
			System.out.println(page);
			if (page != null && !page.isEmpty()) {
				if (page.startsWith("redirect:")) {
					String view = page.substring(9);
					response.sendRedirect(view);
				} else if (page.startsWith("ajax:")) {
					response.getWriter().append(page.substring(5));
				} else if (page.startsWith("script:")) {
					response.getWriter().append("<script>").append(page.substring(7)).append("</script>");
				} else {
					request.getRequestDispatcher(page).forward(request, response);
				}
			} else {

				System.out.println("null");

			}

		}
	}
	
	
	
}
