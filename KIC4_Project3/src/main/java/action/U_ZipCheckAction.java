package action;

import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import member.ZipcodeDTO;

public class U_ZipCheckAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		//검색전->check=y , 검색후->check=n
		//Register.jsp->script.js->check,area3
		request.setCharacterEncoding("utf-8");
		String check=request.getParameter("check");//y
		String area3=request.getParameter("area3");
		System.out.println("check => "+check+", area3 => "+area3);
		//검색된 데이터를 화면에 출력
		MemberDAO memDao = new MemberDAO();
		Vector<ZipcodeDTO> zipcodeList = memDao.zipcodeRead(area3);
		int totalList = zipcodeList.size();//검색갯수
		
		request.setAttribute("zipcodeList", zipcodeList);
		request.setAttribute("totalList", totalList);
		request.setAttribute("check", check);
		
		return "/U_ZipCheck.jsp";
	}

}
