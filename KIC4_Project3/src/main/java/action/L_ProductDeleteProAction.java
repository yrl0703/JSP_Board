package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.ProductDAO;
import product.ProductDTO;

public class L_ProductDeleteProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		ProductDTO pdto=new ProductDTO();
		int pID=Integer.parseInt(request.getParameter("pID"));
	    
	    ProductDAO pdao=new ProductDAO();
	    pdao.productDelete(pID);
		
		return "/L_ProductDeletePro.jsp";
	}

}
