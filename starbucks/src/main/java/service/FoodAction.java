package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FoodDAO;
import model.FoodBean;

public class FoodAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println("FoodAction");
//		
		
		request.setCharacterEncoding("utf-8");
		
		
		String path = request.getRealPath("listupload");
		System.out.println("path:"+path);
//		
//		MultipartRequest multi = 
//			new MultipartRequest(request,
//								 path,	    // 업로드 디렉토리
//								 size,      // 업로드 파일크기(1MB)
//								 "utf-8",   // 한글 인코딩
//			 new DefaultFileRenamePolicy());// 중복파일 문제 해결
//		
//		
		FoodBean food = new FoodBean();
		
		food.setF_category(request.getParameter("f_category"));
		System.out.println(food.getF_category());
		food.setF_name(request.getParameter("f_name"));
		System.out.println(food.getF_name());
		food.setF_ename(request.getParameter("f_ename"));
		System.out.println(food.getF_ename());
		food.setF_desc(request.getParameter("f_desc"));
		System.out.println(food.getF_desc());
		food.setF_subtitle(request.getParameter("f_subtitle"));
		System.out.println(food.getF_subtitle());
		food.setF_price(Integer.parseInt(request.getParameter("f_price")));
		System.out.println(food.getF_price());
		food.setF_img(request.getParameter("f_img"));
		System.out.println(food.getF_img());
		food.setF_calorie(Integer.parseInt(request.getParameter("f_calorie")));
		System.out.println(food.getF_calorie());
		food.setF_sugar(Integer.parseInt(request.getParameter("f_sugar")));
		System.out.println(food.getF_sugar());
		food.setF_protein(Integer.parseInt(request.getParameter("f_protein")));
		System.out.println(food.getF_protein());
		food.setF_natrium(Integer.parseInt(request.getParameter("f_natrium")));
		System.out.println(food.getF_natrium());
		food.setF_fat(Integer.parseInt(request.getParameter("f_fat")));
		System.out.println(food.getF_fat());
		food.setF_caffeine(Integer.parseInt(request.getParameter("f_caffeine")));
		System.out.println(food.getF_caffeine());
		
		
		FoodDAO dao = FoodDAO.getInstance();
		
		int result = dao.insert(food);
		if(result == 1) {
			System.out.println("추가완료");
	
		}
		
		
		
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("./FoodListAction.do");
		
		
		
		return forward;
	}

}
