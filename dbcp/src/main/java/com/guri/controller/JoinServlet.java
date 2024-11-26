package com.guri.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.guri.dao.MemberDAO;
import com.guri.dto.MemberVO;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet("/join.do")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("member/join.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String admin = request.getParameter("admin");
		
		MemberVO mvo = new MemberVO();
		mvo.setName(name);
		mvo.setUserid(userid);
		mvo.setPwd(pwd);
		mvo.setEmail(email);
		mvo.setPhone(phone);
		mvo.setAdmin(Integer.parseInt(admin));
		
		MemberDAO mdao = MemberDAO.getInstance();
		int result = mdao.insertMember(mvo);
		
		HttpSession session = request.getSession();
		if(result == 1) {
			session.setAttribute("userid", mvo.getUserid());
			request.setAttribute("message", "회원 가입에 성공하셨습니다");
		}else {
			request.setAttribute("message", "회원 가입에 실패했습니다.");
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("member/login.jsp");
		rd.forward(request, response);
		
	}

}
