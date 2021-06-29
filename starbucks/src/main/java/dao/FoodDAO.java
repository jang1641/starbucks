package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import model.FoodBean;

public class FoodDAO {
	// 싱글톤
		private static FoodDAO instance = new FoodDAO();

		public static FoodDAO getInstance() {
			return instance;
		}

		// 컨넥션풀
		private Connection getConnection() throws Exception {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/orcl");
			return ds.getConnection();
		}

		// 시작
		public int insert(FoodBean food) {
			int result = 0;
			Connection con = null;
			PreparedStatement pstmt = null;
			
			try {
				con = getConnection();

	String sql="insert into food values(starb_seq.nextval,?,?,?,?,?, ";	
	       sql+=" ?,?,?,?,?,?,?,? ) ";
	       
	       		pstmt = con.prepareStatement(sql);
	       		pstmt.setString(1, food.getF_category());
	       		pstmt.setString(2, food.getF_name());
	       		pstmt.setString(3, food.getF_ename());
	       		pstmt.setString(4, food.getF_desc());
	       		pstmt.setString(5, food.getF_subtitle());
	       		pstmt.setInt(6, food.getF_price());
	       		pstmt.setString(7, food.getF_img());
	       		pstmt.setInt(8, food.getF_calorie());		
	       		pstmt.setInt(9, food.getF_sugar());     
	       		pstmt.setInt(10, food.getF_protein());     
	       		pstmt.setInt(11, food.getF_natrium());     
	       		pstmt.setInt(12, food.getF_fat());    
	       		pstmt.setInt(13, food.getF_caffeine());    
	       		
	       		result = pstmt.executeUpdate();		// SQL문 실행
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				if(pstmt!=null) try { pstmt.close(); }catch(Exception e) {}
				if(con!=null) try { con.close(); }catch(Exception e) {}
			}
			
			return result;
		}


		//list에서 사용 총개수
		public int getCount() {
			int result = 0;
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				con = getConnection();
				
				String sql="select count(*) from food";
				
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();	// SQL문 실행
				
				if(rs.next()) {
//					result = rs.getInt(1);
					result = rs.getInt("count(*)");
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				if(rs!=null) try { rs.close(); }catch(Exception e) {}
				if(pstmt!=null) try { pstmt.close(); }catch(Exception e) {}
				if(con!=null) try { con.close(); }catch(Exception e) {}
			}
			
			return result;
		}

		
		//글목록
		public List<FoodBean> getList(int start, int end){
			List<FoodBean> list = new ArrayList<FoodBean>();
			
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				con = getConnection();

	String sql="select * from food order by product_number desc"; //상품정렬순서
		   
		   		pstmt = con.prepareStatement(sql);
//		   		pstmt.setInt(1, start);
//		   		pstmt.setInt(2, end);
		   		rs = pstmt.executeQuery();	// SQL문 실행
		   		
		   		while(rs.next()) {
		   			FoodBean food = new FoodBean();
		   			
		   			
		   			food.setProduct_number(rs.getInt("product_number"));
		   			food.setF_category(rs.getString("f_category"));
		   			food.setF_name(rs.getString("f_name"));
		   			food.setF_price(rs.getInt("f_price"));
		   			food.setF_img(rs.getString("f_img"));
		   			food.setF_subtitle(rs.getString("f_subtitle"));
		   			food.setF_desc(rs.getString("f_desc"));
		   			food.setF_calorie(rs.getInt("f_calorie"));
		   			food.setF_sugar(rs.getInt("f_sugar"));
		   			food.setF_protein(rs.getInt("f_protein"));
		   			food.setF_natrium(rs.getInt("f_natrium"));
		   			food.setF_fat(rs.getInt("f_fat"));
		   			food.setF_caffeine(rs.getInt("f_caffeine"));
		   			food.setF_ename(rs.getString("f_ename"));
		   			
		   			list.add(food);
		   		}
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				if(rs!=null) try { rs.close(); }catch(Exception e) {}
				if(pstmt!=null) try { pstmt.close(); }catch(Exception e) {}
				if(con!=null) try { con.close(); }catch(Exception e) {}
			}
			
			return list;
		}
		
		
		//상세페이지
		public FoodBean getDetail(int product_number) {
			
			int result =0;
			
			FoodBean food = new FoodBean();
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				con = getConnection();
				
				String sql="select * from food where product_number=?";
				
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, product_number);
				rs = pstmt.executeQuery();		// SQL문 실행
				
				if(rs.next()) {
					food.setProduct_number(rs.getInt("product_number"));
					food.setF_category(rs.getString("f_category"));
					food.setF_name(rs.getString("f_name"));
		   			food.setF_ename(rs.getString("f_ename"));
		   			food.setF_desc(rs.getString("f_desc"));
		   			food.setF_price(rs.getInt("f_price"));
		   			food.setF_img(rs.getString("f_img"));
		   			food.setF_calorie(rs.getInt("f_calorie"));
		   			food.setF_sugar(rs.getInt("f_sugar"));
		   			food.setF_protein(rs.getInt("f_protein"));
		   			food.setF_caffeine(rs.getInt("f_caffeine"));
		   			food.setF_subtitle(rs.getString("f_subtitle"));
		   			food.setF_subtitle(rs.getString("f_ename"));
		   			
		   			
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				if(rs!=null) try { rs.close(); }catch(Exception e) {}
				if(pstmt!=null) try { pstmt.close(); }catch(Exception e) {}
				if(con!=null) try { con.close(); }catch(Exception e) {}
			}
			
			return food;
		}
		
		
//		// 조회수 증가
//		public void readcountUpdate(int board_num) {
//			Connection con = null;
//			PreparedStatement pstmt = null;
//			
//			try {
//				con = getConnection();
//				
//	String sql="update model2 set board_readcount=board_readcount+1 ";
//	       sql+=" where board_num = ?";		
//
//	       		pstmt = con.prepareStatement(sql);
//	       		pstmt.setInt(1, board_num);
//	       		pstmt.executeUpdate();		// SQL문 실행
//	       
//			}catch(Exception e) {
//				e.printStackTrace();
//			}finally {
//				if(pstmt!=null) try { pstmt.close(); }catch(Exception e) {}
//				if(con!=null) try { con.close(); }catch(Exception e) {}
//			}
//			
//
//		}

}
