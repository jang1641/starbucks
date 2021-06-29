package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FoodDAO;
import model.FoodBean;

public class FoodDetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		System.out.println("FoodDetailAction");
		
		int product_number = Integer.parseInt(request.getParameter("product_number"));
//		String page = request.getParameter("page");
//		
		FoodDAO dao = FoodDAO.getInstance();

		FoodBean food = dao.getDetail(product_number);
		
//		String f_desc = food.getF_desc().replace("\n", "<br>");
//		// 공유설정
		
		
		request.setAttribute("food", food);		
		System.out.println("ㅎㅎ");
		
		
		ActionForward forward = new ActionForward(); 
		forward.setRedirect(false);  // dispatcher 방식으로 포워딩
		forward.setPath("./order/ordercontent.jsp"); 
		
		System.out.println("ㅎㅎ");
		return forward;
	}

}
