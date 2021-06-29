package service;

import java.io.PrintWriter;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import dao.JoinDAO;
import model.JoinDTO;

public class JoinDelete implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("JoinDelete");
		
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		String id = request.getParameter("id");
		String m_pw = request.getParameter("m_pw");
		
		JoinDAO dao = JoinDAO.getInstance();
		JoinDTO old = dao.getMember(id);
		
		// 비교
		if(old.getM_pw().equals(m_pw)) {
			int result = dao.joindelete(id);
			if(result == 1) 
				System.out.println("회원삭제 성공");	
				
			out.println("<script>");
			out.println("alert('회원삭제 성공');");
			out.println("location.href='./join/main.jsp';");
			out.println("</script>");
			out.close();	
				
			session.invalidate();
			
			
		} else {
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
