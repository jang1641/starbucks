package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.JoinDAO;
import model.JoinDTO;

public class JoinUpdateMember implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("JoinUpdateMember");
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		JoinDAO dao = JoinDAO.getInstance();
		JoinDTO member = dao.getMember(id);
		System.out.println("수정폼:" + member);
		
		request.setAttribute("member", member);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false); 
		forward.setPath("./join/joinupdateform.jsp");
		
		return forward;
	}

}
