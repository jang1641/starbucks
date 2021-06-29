package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.JoinDAO;
import model.JoinDTO;

public class JoinInsert implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("JoinInsert");
		
		request.setCharacterEncoding("utf-8");
		
		JoinDTO member = new JoinDTO();
		member.setId(request.getParameter("id"));
		member.setM_pw(request.getParameter("m_pw"));
		member.setM_nick(request.getParameter("m_nick"));
		member.setM_name(request.getParameter("m_name"));
		member.setM_birth1(request.getParameter("m_birth1"));
		member.setM_birth2(request.getParameter("m_birth2"));
		member.setM_birth3(request.getParameter("m_birth3"));
		member.setM_phone1(request.getParameter("m_phone1"));
		member.setM_phone2(request.getParameter("m_phone2"));
		member.setM_phone3(request.getParameter("m_phone3"));
		member.setM_mail(request.getParameter("m_mail"));
		member.setM_post(request.getParameter("m_post"));
		member.setM_adds(request.getParameter("m_adds"));
		
		JoinDAO dao = JoinDAO.getInstance();
		int result = dao.insert(member);
		if(result == 1) {
			System.out.println("회원가입 성공");
		}
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./join/loginform.jsp");
		
		return forward;
	}

}
