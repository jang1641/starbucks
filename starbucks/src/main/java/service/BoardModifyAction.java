package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.BoardBean;
import dao.BoardDAO;

public class BoardModifyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("BoardModifyAction");
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		int b_num = Integer.parseInt(request.getParameter("board_num"));
		String page = request.getParameter("page");
		System.out.println("수정할 b_num: "+b_num);
		System.out.println("수정할 page: "+page);
		
		BoardDAO dao = BoardDAO.getInstance();
		BoardBean board = dao.getDetail(b_num);// 상세정보 구하기
		System.out.println("board: "+board);
		request.setAttribute("board", board);	    // 공유 설정
		request.setAttribute("page", page);

		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./board/starbucks_board_modify.jsp");
		return forward;
	}

	
}
