package cmd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;

public class LogoutCMD implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 로그아웃처리
		
		HttpSession session = request.getSession(false); //클라이언트가 가진 sessionID와 동일한 세션객체의 주솟값 반환, 세션없을 때 인자가 true이거나 없으면 새로 세션 생성, false일 경우 세션생성없이 null반환
		if (session != null || session.getAttribute("memberId") != null) {
			session.invalidate(); //현재 세션 삭제
			System.out.println("로그아웃 완료");
		} else {
			System.out.println("로그인 상태가 아님");
		}
		
		String path = null;
		return path;
	}

}
