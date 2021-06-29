package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.sql.DataSource;

import model.BoardBean;

public class BoardDAO {
	private static BoardDAO instance = new BoardDAO();
	public static BoardDAO getInstance() {
		return instance;
	}
	// 컨넥션풀에서 컨넥션을 구해오는 메소드
		private Connection getConnection() throws Exception{
			Context init = new InitialContext();
	  		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/orcl");
	  		return ds.getConnection();
		}
	
	public int insert(BoardBean board) {
		System.out.println("인서트 dao");
		int result= 0;
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = getConnection();
String sql="insert into board(b_num, id, b_title, b_cont, b_reg, b_hits) values(STARB_SEQ.nextval, ?, ?, ?,sysdate,?)";
			pstmt = con.prepareStatement(sql);
       		pstmt.setString(1, board.getId());
       		pstmt.setString(2, board.getB_title());
       		pstmt.setString(3, board.getB_cont());
       		pstmt.setInt(4, 0);
       		result = pstmt.executeUpdate();		// SQL문 실행
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(pstmt!=null) try { pstmt.close(); }catch(Exception e) {}
			if(con!=null) try { con.close(); }catch(Exception e) {}
		}
		return result;
	}
	
	public int getCount() {
		int result = 0;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = getConnection();
			
			String sql="select count(*) from board";
			
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();	// SQL문 실행
			
			if(rs.next()) {
//				result = rs.getInt(1);
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
	
	public List<BoardBean> getList(int start, int end){
		List<BoardBean> list = new ArrayList<BoardBean>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = getConnection();
			String sql="select rownum, x.* from (select B_NUM, id, b_title, b_hits, b_cont, b_reg from board order by b_num desc)x "
					+ " where rownum >=? and rownum <=?";
			
			pstmt = con.prepareStatement(sql);
	   		pstmt.setInt(1, start);
	   		pstmt.setInt(2, end);
	   		rs = pstmt.executeQuery();	// SQL문 실행
	   		
	   		while(rs.next()) {
	   			BoardBean board = new BoardBean();
	   			board.setB_num(rs.getInt("b_num"));
	   			
	   			board.setId(rs.getString("id"));
	   			board.setB_title(rs.getString("b_title"));
	   			board.setB_hits(rs.getInt("b_hits"));
	   			board.setB_cont(rs.getString("b_cont"));
	   			board.setB_reg(rs.getTimestamp("b_reg"));
	   			
	   			list.add(board);
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
	//조회수 증가
	public void readcountUpdate(int b_num) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = getConnection();
			
String sql="update board set b_hits=b_hits+1 ";
       sql+=" where b_num = ?";		

       		pstmt = con.prepareStatement(sql);
       		pstmt.setInt(1, b_num);
       		pstmt.executeUpdate();		// SQL문 실행
       
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(pstmt!=null) try { pstmt.close(); }catch(Exception e) {}
			if(con!=null) try { con.close(); }catch(Exception e) {}
		}
		
	}
	
	// 상세 페이지
		public BoardBean getDetail(int b_num) {
			BoardBean board = new BoardBean();
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				con = getConnection();
				
				String sql="select b_num, id, b_title, b_cont, b_reg, b_hits from board where b_num=?";
				
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, b_num);
				rs = pstmt.executeQuery();		// SQL문 실행
				
				if(rs.next()) {
					board.setB_num(rs.getInt("b_num"));
		   			board.setId(rs.getString("id"));
		   			board.setB_title(rs.getString("b_title"));
		   			board.setB_cont(rs.getString("b_cont"));
		   			board.setB_reg(rs.getTimestamp("b_reg"));
		   			board.setB_hits(rs.getInt("b_hits"));
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				if(rs!=null) try { rs.close(); }catch(Exception e) {}
				if(pstmt!=null) try { pstmt.close(); }catch(Exception e) {}
				if(con!=null) try { con.close(); }catch(Exception e) {}
			}
			
			return board;
		}
	
}
