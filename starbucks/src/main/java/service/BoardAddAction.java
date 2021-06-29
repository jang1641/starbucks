package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.BoardBean;
import dao.BoardDAO;

public class BoardAddAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("BoardAddAction");
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(); 

		BoardBean board = new BoardBean();
		//로그인 후 받아온 세션의 아이디 값을 저장
		board.setId((String)session.getAttribute("id"));
		board.setB_title(request.getParameter("title"));
		board.setB_cont(request.getParameter("content"));

		System.out.println(board.getId());
		System.out.println(board.getB_title());
		System.out.println(board.getB_cont());
		
		BoardDAO dao= BoardDAO.getInstance();
		int result = dao.insert(board);
		if(result == 1) {
			System.out.println("글작성 성공");
		}		
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("./BoardListAction.do");
		
		return forward;
	}

}
