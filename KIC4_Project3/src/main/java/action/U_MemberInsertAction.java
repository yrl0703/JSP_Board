package action;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import member.RegisterDTO;

public class U_MemberInsertAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		//값을 입력을 받아서 MemberDTO에 저장 -> 테이블에 저장하는 구문
		request.setCharacterEncoding("utf-8"); //한글처리
		
		RegisterDTO regDTO = new RegisterDTO();
	    
		regDTO.setMemid(request.getParameter("memid"));
		regDTO.setGrade(request.getParameter("grade"));
		regDTO.setMemname(request.getParameter("memname"));
		regDTO.setBirthday(request.getParameter("birthday"));
		regDTO.setEmail(request.getParameter("email"));
		regDTO.setMphone(request.getParameter("mphone"));
		regDTO.setNickname(request.getParameter("nickname"));
		regDTO.setEnrolldate(new Timestamp(System.currentTimeMillis()));//오늘날짜는 계산해서 수동으로 저장해야한다.
		regDTO.setPwd(request.getParameter("pwd"));
		regDTO.setZipcode(request.getParameter("zipcode"));
		regDTO.setAddr(request.getParameter("addr"));
		
		MemberDAO memDao = new MemberDAO();
	    boolean flag = memDao.memberInsert(regDTO);
	    System.out.println("U_MemberInsertAction(flag)="+flag);
	    
	    request.setAttribute("flag", new Boolean(flag));
	    
	    return "/U_MemberInsert.jsp";
	}

}
