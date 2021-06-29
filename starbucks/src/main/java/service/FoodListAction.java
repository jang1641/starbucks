package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FoodDAO;
import model.FoodBean;

public class FoodListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		System.out.println("FoodListAction");
		
		int page = 1; 		// 현재 페이지 번호
		int limit = 10;     // 한 화면에 출력할 데이터 갯수
		
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		// page =1  startRow=1, endRow=10
		// page =2  startRow=11, endRow=20
		int startRow = (page-1) * limit + 1;	
		int endRow = page * limit;
		
		FoodDAO dao = FoodDAO.getInstance();
		int listcount = dao.getCount();		// 총 데이터 갯수
		System.out.println("listcount:"+ listcount);
		
		List<FoodBean> foodlist = dao.getList(startRow, endRow);
		System.out.println("foodlist:" + foodlist);
		
		
		
		// 총 페이지
		int pageCount=listcount/limit+((listcount%limit==0) ? 0:1); 
		
		// 정보들
//		int product_number =Integer.parseInt( request.getParameter("product_number"));
//		int f_price = Integer.parseInt(request.getParameter("f_price"));
//		int f_fat = Integer.parseInt(request.getParameter("f_price"));
//		int f_natrium = Integer.parseInt(request.getParameter("f_natrium"));
//		int f_protein = Integer.parseInt(request.getParameter("f_protein"));
//		int f_sugar = Integer.parseInt(request.getParameter("f_sugar"));
//		int f_calorie = Integer.parseInt(request.getParameter("f_calorie"));
//		int f_caffeine = Integer.parseInt(request.getParameter("f_caffeine"));
//
//		String f_img = request.getParameter("f_img");
//		String f_category = request.getParameter("f_category");
//		String f_name = request.getParameter("f_name");
//		String f_desc = request.getParameter("f_desc");
//		String f_subtitle = request.getParameter("f_subtitle");
//		String f_ename = request.getParameter("f_ename");
//		
		
		int startPage = ((page - 1)/10) * limit + 1; // 1,  11, 21..
		int endPage = startPage + 10 - 1;            // 10, 20, 30..
		
		
		request.setAttribute("page", page); 
		request.setAttribute("listcount", listcount);
		request.setAttribute("foodlist", foodlist);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		System.out.println("여기부터 정보");

		System.out.println("값들을 모두 불러서 리스트에 뿌려주기 직전!");
		
		
		ActionForward forward = new ActionForward();
		
		// dispatcher 방식으로 포워딩이 되어야, view 페이지에서 공유한 값에 
		// 접근할수 있다.
		forward.setRedirect(false);  // dispatcher 방식으로 포워딩
		forward.setPath("./board/food_view.jsp");
		
		return forward;
	}

}
