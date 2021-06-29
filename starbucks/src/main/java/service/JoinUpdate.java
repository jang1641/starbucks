package service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.JoinDAO;
import model.JoinDTO;

public class JoinUpdate implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("JoinUpdate");
		
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
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
		JoinDTO old = dao.getMember(member.getId());
		
		// 비번 비교
		if(old.getM_pw().equals(member.getM_pw())) { 	// 비번 일치
			int result = dao.update(member);
			if(result == 1) System.out.println("회원 수정 성공");
			
			out.println("<script>");
			out.println("alert('수정 성공');");
			out.println("location.href='./join/mypage.jsp';");
			out.println("</script>");
			out.close();
			
			
		} else {				// 비번 불일치
			out.println("<script>");
			out.println("alert('비번이 일치하지 않습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			
			return null;
		}	
	
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./join/main.jsp");  
		
		return forward;
	}
}
