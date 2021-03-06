package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import model.OrderBean;

public class OrderDAO {
	// 싱글톤
		private static OrderDAO instance = new OrderDAO();

		public static OrderDAO getInstance() {
			return instance;
		}

		// 컨넥션풀
		private Connection getConnection() throws Exception {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/orcl");
			return ds.getConnection();
		}

		// 시작
				public int insert(OrderBean food) {
					int result = 0;
					Connection con = null;
					PreparedStatement pstmt = null;
					
					try {
						con = getConnection();

			String sql="insert into orders values(order_seq.nextval,?,?,?,?,?,?,?,order_seq.nextval,sysdate)";	
			       
			
			       		pstmt = con.prepareStatement(sql);
			       		pstmt.setString(1, food.getId());
			       		pstmt.setInt(2, food.getProduct_number());
			       		pstmt.setInt(3, food.getO_price());
			       		pstmt.setInt(4, food.getO_quantity());
			       		pstmt.setString(5, food.getO_paytype());
			       		pstmt.setInt(6, food.getO_totalprice());
			       		pstmt.setString(7, food.getO_req());

			       		result = pstmt.executeUpdate();		// SQL문 실행
						
					}catch(Exception e) {
						e.printStackTrace();
					}finally {
						if(pstmt!=null) try { pstmt.close(); }catch(Exception e) {}
						if(con!=null) try { con.close(); }catch(Exception e) {}
					}
					
					return result;
				}
				

}
