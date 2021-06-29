package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardBean;
import dao.BoardDAO;

public class BoardDetailAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("BoardDetailAction");
		
		int b_num = Integer.parseInt(request.getParameter("b_num"));
		String page = request.getParameter("page");
		
		BoardDAO dao = BoardDAO.getInstance();
		dao.readcountUpdate(b_num);			
		// 조회수 증가
		BoardBean board = dao.getDetail(b_num);// 상세정보 구하기
		
		//getDetail(int b_num)
		// 공유 설정
		request.setAttribute("board", board);
		request.setAttribute("page", page);
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);  // dispatcher 방식으로 포워딩
		forward.setPath("./board/starbucks_board_view.jsp");
		
		return forward;
	}

}
