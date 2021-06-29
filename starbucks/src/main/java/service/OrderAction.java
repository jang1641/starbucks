package service;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.FoodDAO;
import dao.OrderDAO;
import dao.ProductDAO;
import model.BoardBean;
import model.FoodBean;
import model.OrderBean;
import model.ProductBean;

public class OrderAction implements Action {


	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("OrderAction");
		
		 request.setCharacterEncoding("utf-8");
		
		  OrderBean board = new OrderBean();
		  board.setO_quantity(Integer.parseInt(request.getParameter("o_quantity")));
		  board.setO_req(request.getParameter("o_req"));
		  board.setO_paytype(request.getParameter("o_paytype"));
		  board.setId(request.getParameter("id"));
		  board.setProduct_number(Integer.parseInt(request.getParameter("product_number")));
		  board.setO_price(Integer.parseInt(request.getParameter("o_price")));
		  board.setO_totalprice(Integer.parseInt(request.getParameter("o_totalprice")));
		
		 
		  OrderDAO dao = OrderDAO.getInstance();
		  int result = dao.insert(board);
		  if(result == 1) { 
			 System.out.println("결제완료");
		  }		

		request.setAttribute("result", result); 
		  
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./board/result.jsp");
		
		return forward;
	}

}
