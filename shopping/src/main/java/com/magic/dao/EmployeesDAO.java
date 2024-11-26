package com.magic.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.magic.dto.EmployeesVO;

public class EmployeesDAO {

	private EmployeesDAO() {

	}

	private static EmployeesDAO instance = new EmployeesDAO();

	public static EmployeesDAO getInstance() {
		return instance;
	}

	Connection getConnection() {

		Connection conn = null;
		Context init = null;

		try {
			init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:/comp/env/jdbc/shopping");
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return conn;
	}

	// 사용자 인증 부분
	public int userCheck(String userid, String pwd, String lev) {

		int result = 1;
		Connection conn = null;
		String sql = "select * from employees where id=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				// 비밀 번호가 일치
				if (pwd.equals(rs.getString("pass"))) {
					// 회원 등급이 일치한다면
					if (lev.equals(rs.getString("lev"))) {
						result = 2; // 관리자로 로그인 성공
						if (lev.equals("B")) {
							result = 3; // 일반 회원으로 로그인 성공
						}
					} else {
						// 레벨이 불일치 할 때
						result = 1;
					}
				} else {
					// 비밀 번호 불일치 할 때
					result = 0;
				}
			} else {
				result = -1; // 아이디 불일치로 로그인 실패
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;

	}

	public EmployeesVO getMember(String id) {
		EmployeesVO member = null;

		Connection conn = null;
		String sql = "select * from employees where id=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				member = new EmployeesVO();
				member.setId(rs.getString("id"));
				member.setPass(rs.getString("pass"));
				member.setName(rs.getString("name"));
				member.setLev(rs.getString("lev"));
				member.setEnter(rs.getDate("enter"));
				member.setPhone(rs.getString("phone"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();

			} catch (Exception e) {

			}
		}
		return member;

	}

	// 회원 정보 수정

	public int updateMember(EmployeesVO evo) {
		int result = 1;
		String sql = "update employees set gender=?, pass=?, name=?, lev=?, phone=? where id=?";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, evo.getGender());
			pstmt.setString(2, evo.getPass());
			pstmt.setString(3, evo.getName());
			pstmt.setString(4, evo.getLev());
			pstmt.setString(5, evo.getPhone());
			pstmt.setString(6, evo.getId());

			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return result;
	}

	// 사원 등록 메서드
	public void insertMember(EmployeesVO member) {
		String sql = "insert into employees values(?,?,?,?,sysdate,?,?)";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPass());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getLev());
			pstmt.setInt(5, member.getGender());
			pstmt.setString(6, member.getPhone());

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	
	
	
	
	
	

}

























