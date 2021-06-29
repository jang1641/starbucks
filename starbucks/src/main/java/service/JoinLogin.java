package service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.JoinDAO;

public class JoinLogin implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("JoinLogin");
		
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		String id = request.getParameter("id");
		String m_pw = request.getParameter("m_pw");
		
		JoinDAO dao = JoinDAO.getInstance();
		int result = dao.joinAuth(id, m_pw);
		if(result == 1) System.out.println("회원인증 성공");
		
		if(result == 1) {	// 인증 성공
			session.setAttribute("id", id); // 세션
		} else {
			out.println("<script>");
			out.println("alert('로그인 실패');");
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
