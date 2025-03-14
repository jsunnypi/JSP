package com.jsp.board;

import java.util.*;
import java.sql.*;
import javax.sql.*;
import javax.naming.*;

public class BoardDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private DataSource ds;
	
	private BoardDAO() {
		try {
			
			Context context = new InitialContext();
			ds = (DataSource)context.lookup("java:comp/env/jdbc/test");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	private static BoardDAO instance = new BoardDAO();
	
	public static BoardDAO getInstance() {
		return instance;
	}
	
	
	private void close(Connection conn) {
		try {
			if(conn != null) {
				conn.close();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	private void close(PreparedStatement pstmt) {
		try {
			if(pstmt != null) {
				pstmt.close();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	private void close(ResultSet rs) {
		try {
			if(rs != null) {
				rs.close();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	// 게시판 목록을 보여주기 위한 메소드
	public ArrayList<BoardDTO> boardList(){
		
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		
		String query = "select * from board order by bId DESC";
		// bId를 내림차순으로 정렬
		
		try {
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				int bId = rs.getInt("bId");
				String bName = rs.getString("bName");
				String bTitle = rs.getString("bTitle");
				String bContent = rs.getString("bContent");
				Timestamp bDate = rs.getTimestamp("bDate");
				int bHit = rs.getInt("bHit");
				
				list.add(new BoardDTO(bId, bName, bTitle, bContent, bDate, bHit));
				
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			close(rs);
			close(pstmt);
			close(conn);
			
		}
		
		
		return list;
	}
	
	// 글 작성 후 데이터를 넣는 메소드
	public int write(String bName, String bTitle, String bContent) {
		int result = 0;
		
		String query = "insert into board(bId, bName, bTitle, bContent) "
				+ "values(board_seq.nextval, ?, ?, ?)";
		
		try {
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, bName);
			pstmt.setString(2, bTitle);
			pstmt.setString(3, bContent);
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			close(pstmt);
			close(conn);
			
		}
		
		return result;
	}
	
	// 리스트에 제목 클릭 시 해당 내용을 보여주기 위한 메소드
	public BoardDTO contentView(String strID) {
		BoardDTO dto = null;
		upHit(strID);
		
		String query = "select * from board where bId = ?";
		
		try {
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, Integer.parseInt(strID));
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				int bId = rs.getInt("bId");
				String bName = rs.getString("bName");
				String bTitle = rs.getString("bTitle");
				String bContent = rs.getString("bContent");
				Timestamp bDate = rs.getTimestamp("bDate");
				int bHit = rs.getInt("bHit");
				
				dto = new BoardDTO(bId, bName, bTitle, bContent, bDate, bHit);
				
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			close(rs);
			close(pstmt);
			close(conn);
			
		}
		
		return dto;
	}


	// 조회수 증가시켜주는 메소드 (bHit 하나 올려주는 메소드)
	private void upHit(String strID) {
		
		String query = "update board set bHit = bHit + 1 where bId = ?";
		
		try {
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, Integer.parseInt(strID));
			
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			close(pstmt);
			close(conn);
			
		}
		
		
	}
	
	
	// 해당글을 수정 해주는 메소드
	public int modify(String strID, String bName, String bTitle, String bContent) {
		int result = 0;
		
		String query = "update board set bName = ?, "
				+ "bTitle = ?, bContent = ? where bId = ?";
		
		try {
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, bName);
			pstmt.setString(2, bTitle);
			pstmt.setString(3, bContent);
			pstmt.setInt(4, Integer.parseInt(strID));
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			close(pstmt);
			close(conn);
			
		}
		
		
		return result;
	}
	
	// 해당글을 삭제 해주는 메소드
	public int delete(String strID) {
		int result = 0;
		
		String query = "delete from board where bId = ?";
		
		try {
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, Integer.parseInt(strID));
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			close(pstmt);
			close(conn);
			
		}
		
		return result;
	}
	
	
}