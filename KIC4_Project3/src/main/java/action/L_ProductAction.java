package action;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.ProductDAO;

public class L_ProductAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		String pageNum=request.getParameter("pageNum");	
		String search=request.getParameter("search");
		String filter=request.getParameter("pcategory");
		
		System.out.println("L_ProductAction의 매개변수 확인");
		System.out.println("pageNum=>"+pageNum+",search=>"+search+",filter=>"+filter);
			
		int count=0;
		List productList=null;
		 
		ProductDAO pdao=new ProductDAO();
		count=pdao.getProductSearchCount(search, filter);
		
		System.out.println("현재 레코드수(count)=>"+count);
		
		Hashtable<String,Integer> pgList=pdao.pageList(pageNum, count);
		 
		 if (count > 0){
			 System.out.println(pgList.get("startRow")+","+pgList.get("endRow"));
			 productList=pdao.getProductList(pgList.get("startRow"),pgList.get("pageSize"),search,filter);
			 System.out.println("L_ProductAction의 productList=>"+productList);
		 }else {
			 productList=Collections.EMPTY_LIST;
		 }
		 
		 //2.처리한 결과를 공유(서버메모리에 저장)->이동할 페이지에 공유해서 사용(request)
		 request.setAttribute("search", search);
		 request.setAttribute("filter", filter);
		 request.setAttribute("pgList", pgList);
		 request.setAttribute("productList", productList);
		 
		 return "/L_Product.jsp";
	}

}
