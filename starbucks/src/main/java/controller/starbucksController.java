package controller;

import java.io.IOException;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Action;
import service.ActionForward;
import service.BoardAddAction;
import service.BoardDetailAction;
import service.BoardListAction;
import service.BoardModifyAction;
import service.FoodAction;
import service.FoodAddAction;
import service.FoodDetailAction;
import service.FoodListAction;
import service.IdCheck;
import service.JoinDelete;
import service.JoinInsert;
import service.JoinLogin;
import service.JoinUpdate;
import service.JoinUpdateMember;
import service.OrderAction;
import service.PayAction;
import service.ProductAddAction;


/**
 * Servlet implementation class MemberController
 */
@WebServlet("*.do") 
public class starbucksController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// doGet(), doPost() 메소드에서 공통적인 작업을 처리하는 메소드
	public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		
		System.out.println("requstURI:"+requestURI);   // /model2member/MemberInsert.do
		System.out.println("contextPath:"+contextPath);// /model2member 
		System.out.println("command:"+command);        // /MemberInsert.do
		
		Action action = null;
		ActionForward forward = null;
		
		// 회원 가입
		if(command.equals("/JoinInsert.do")) {
			try {
				action = new JoinInsert();
				forward = action.execute(request, response);
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		// 아이디 중복 검사(ajax)
		} else if(command.equals("/Idcheck.do"))	{
			try {
				action = new IdCheck();
				forward = action.execute(request, response);
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			
			
		// 로그인
		} else if(command.equals("/JoinLogin.do")) {
			try {
				action = new JoinLogin();
				forward = action.execute(request, response);
			} catch(Exception e) {
				e.printStackTrace();
			}
		
									
		// 로그아웃
		} else if(command.equals("/Logout.do")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./join/logout.jsp");
			
		// 회원가입 폼 
		} else if(command.equals("/Join.do")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./join/join.jsp"); 
		
		// 로그인 폼	
		} else if(command.equals("/LoginForm.do")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./join/loginform.jsp");
		
		// 회원정보 수정폼
		} else if(command.equals("/JoinUpdateMember.do")) {
			try {
				action = new JoinUpdateMember();
				forward = action.execute(request, response);
			} catch(Exception e) {
				e.printStackTrace();
			}
		
		// 회원정보 수정
		} else if(command.equals("/JoinUpdate.do")) {
			try {
				action = new JoinUpdate();
				forward = action.execute(request, response);
			} catch(Exception e) {
				e.printStackTrace();
			}
		
		// 회원 탈퇴 폼	
		} else if(command.equals("/JoinDeleteMember.do")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./join/joindeleteform.jsp");
		
		// 회원 탈퇴
		} else if(command.equals("/JoinDelete.do")) {
			try {
				action = new JoinDelete();
				forward = action.execute(request, response);
			} catch(Exception e) {
				e.printStackTrace();
			}
			
		// 메인 페이지
		} else if(command.equals("/MainForm.do")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./join/main.jsp");
			
// -----------------------------------------------------------------------------------			
		
		
		// 글작성
	      } else if (command.equals("/BoardAddAction.do")) {
					try {
						action = new BoardAddAction();
						forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
					// 글작성 폼	
				}else if(command.equals("/BoardForm.do")) {
					forward = new ActionForward();
					forward.setRedirect(false);
					forward.setPath("./board/starbucks_board_write.jsp");
				// 글목록	
				}else if(command.equals("/BoardListAction.do")) {
					try {
						action = new BoardListAction();
						forward = action.execute(request, response);
					}catch(Exception e) {
						e.printStackTrace();
					}
					// 상세 페이지	
				}else if(command.equals("/BoardDetailAction.do")) {
					try {
						action = new BoardDetailAction();
						forward = action.execute(request, response);
					}catch(Exception e) {
						e.printStackTrace();
					}
					//글 수정 폼
				}else if(command.equals("/BoardModifyAction.do")) {
					try {
						action = new BoardModifyAction();
						forward = action.execute(request, response);
					}catch (Exception e) {
						e.printStackTrace();
					}
				 /*글 수정
					 * else if(command.equals("/BoardModify.do")) { try { action = new
					 * BoardModify(); forward = action.execute(request, response); }catch (Exception
					 * e) { e.printStackTrace(); } }
					 */
		
//    ---------------------------------------------------------------------------------------------------
		// 상품등록
				} else if(command.equals("/ProductAddAction.do")) {
					try {
						action = new ProductAddAction();
						forward = action.execute(request, response);

					}catch(Exception e) {
						e.printStackTrace();
					}

					
				// 음식등록
				}else if(command.equals("/FoodAddAction.do")) {
					try {
						action = new FoodAddAction();
						forward = action.execute(request, response);

					}catch(Exception e) {
						e.printStackTrace();
					}
				
				//주문완료
				}else if(command.equals("/OrderAction.do")) {
					
					try {
						action = new OrderAction();
						forward = action.execute(request, response);
						
					}catch(Exception e) {
						e.printStackTrace();
					
					}
				}else if(command.equals("/OrderWrite.do")) {
						forward = new ActionForward();
						forward.setRedirect(false);
						forward.setPath("./store/productadd_write.jsp");	
	
				} else if(command.equals("/Gopay.do")) {

					try {
						action = new PayAction();
						forward = action.execute(request, response);
						
					}catch(Exception e) {
						e.printStackTrace();
					
					}		
							
				 /*
					 * else if(command.equals("/order_pay.do")) { try{ action = new Order_pay();
					 * forward = action.execute(request, response); }catch(Exception e) {
					 * e.printStackTrace(); } }
					 */
		
// ------------------------------------------------------------------------------------------------
		//글작성
			  } else if(command.equals("/FoodAction.do")) {
					try {
						action = new FoodAction();
						forward = action.execute(request, response);
					}catch(Exception e) {
						e.printStackTrace();
					}
		//글작성폼
					}else if (command.equals("/FoodForm.do")) {
					
						forward = new ActionForward();
					forward.setRedirect(false);
					forward.setPath("/board/food_write.jsp");	

		// 글목록	
					}else if (command.equals("/FoodListAction.do")) {
						
						try {
							action = new FoodListAction();
							forward = action.execute(request, response);
						}catch(Exception e) {
							e.printStackTrace();
						}
						
					}else if(command.equals("/FoodDetailAction.do")) {
						try {
							action = new FoodDetailAction();
							forward = action.execute(request, response);
						}catch(Exception e) {
							e.printStackTrace();
						}
						
					
					}
		
		
		
		
		// 포워딩 처리
		if(forward != null) {
			if(forward.isRedirect()) {	// redirect 방식으로 포워딩
				response.sendRedirect(forward.getPath());
			}else {		// dispatcher 방식으로 포워딩
				RequestDispatcher dispatcher = 
					request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}		
		
	} // doProcess() end 	
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("get");
		
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("post");
		
		doProcess(request, response);
	}

}
