package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import member.RegisterDTO;

public class U_SearchPwdUpdateAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8");
		
		String memid=request.getParameter("memidDb");
		String emailDb=request.getParameter("emailDb");
		
		//memid로 검색한 memid가 있다면 RegisterDTO에 담는다.
		MemberDAO memDao = new MemberDAO();
		RegisterDTO searchPwd=memDao.searchPwd(memid);
		
		request.setAttribute("memid", memid);
		request.setAttribute("searchPwd", searchPwd);
		
		return "/U_SearchPwdUpdate.jsp";
	}

}
