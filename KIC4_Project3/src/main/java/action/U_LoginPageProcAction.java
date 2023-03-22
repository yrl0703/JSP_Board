package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.MemberDAO;

public class U_LoginPageProcAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//LoginPage.shop에 의한 LoginPage.jsp에서 값이 넘어옴.
				String memid=request.getParameter("memid");
				String pwd=request.getParameter("pwd");
				
				System.out.println("memid=>"+memid);
				System.out.println("pwd=>"+pwd);//경로확인
				MemberDAO memDao = new MemberDAO();
				boolean loginCheck = memDao.loginCheck(memid,pwd);
				
				request.setAttribute("loginCheck", new Boolean(loginCheck));
				request.setAttribute("memid", new String(memid));
				request.setAttribute("pwd", pwd);
				 
				//check->LoginSuccess.jsp(인증화면), LogError.jsp(에러메세지)
				/*
				 * if(loginCheck) { MemLoginDTO memloginDto=new MemLoginDTO(); boolean loginSuc
				 * = memDao.memloginSuc(memloginDto);
				 * 
				 * request.setAttribute("loginSuc", new Boolean(loginSuc));
				 * request.setAttribute("memid", new String(memid));
				 * 
				 * }
				 */
				
				return "/U_LoginPageProc.jsp";
	}

}