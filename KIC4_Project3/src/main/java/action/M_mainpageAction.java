package action;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.M_mainDAO;

public class M_mainpageAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		Random random = new Random();// 랜덤 객체 생성
		random.setSeed(System.currentTimeMillis());//규칙적인 랜덤을 방지
		M_mainDAO pdao=new M_mainDAO();

		int a=random.nextInt(47);
		int c=random.nextInt(49);
		System.out.println("a=>"+a);
		System.out.println("c=>"+c);
		
		List reProduct=pdao.recommendProduct(a+1,a+13);//추천 상품
		List beProduct=pdao.recommendProduct(c+1,c+11);//베스트 상품

		request.setAttribute("reProduct", reProduct);
		request.setAttribute("beProduct", beProduct);
		
		return "/M_mainpage.jsp";
	}

}
