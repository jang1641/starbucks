package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FoodDAO;
import model.FoodBean;

public class PayAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("PayAction");
		
		request.setCharacterEncoding("utf-8");		
		
		int product_number = Integer.parseInt(request.getParameter("product_number"));
		String quantity = request.getParameter("quantity");
		
		
		System.out.println("이거지륭");
//		String page = request.getParameter("page");
//		
		FoodDAO dao = FoodDAO.getInstance();

		FoodBean food = dao.getDetail(product_number);
		
//		String f_desc = food.getF_desc().replace("\n", "<br>");
//		// 공유설정
		
		
		request.setAttribute("food", food);		
		request.setAttribute("quantity", quantity);		
		System.out.println("ㅎㅎ");
		
		
		ActionForward forward = new ActionForward(); 
		forward.setRedirect(false);  // dispatcher 방식으로 포워딩
		forward.setPath("./order/pay.jsp"); 
		
		System.out.println("ㅎㅎ");
		return forward;
	}

	
}
