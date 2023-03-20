package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;

public class U_LogoutAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		//세션 연결상태 => 바로 종료 => 메모리상의 데이터를 삭제
		
		
		String memid=request.getParameter("memid");
		System.out.println("memid=>"+memid);
		
		MemberDAO memDao = new MemberDAO();
		boolean LogoutMemLogin = memDao.deleteMemLogin(memid);
		
		request.setAttribute("LogoutMemLogin", new Boolean(LogoutMemLogin));
		
		return "/U_Logout.jsp";
	}

}
