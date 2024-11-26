package com.magical.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.magic.dao.EmployeesDAO;
import com.magic.dto.EmployeesVO;

/**
 * Servlet implementation class MypageServlet
 */
@WebServlet("/mypage.do")
public class MypageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MypageServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		EmployeesVO emp = (EmployeesVO) session.getAttribute("loginUser");
		if (emp != null) {
			String url = "mypage.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(url);
			rd.forward(request, response);
		} else {
			response.sendRedirect("login.do");
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		request.getParameter("name");
		HttpSession session = request.getSession();
		EmployeesVO member = new EmployeesVO();
		member.setId(request.getParameter("id"));
		member.setPass(request.getParameter("pwd"));
		member.setName(request.getParameter("name"));
		member.setLev(request.getParameter("lev"));

		if (request.getParameter("gender") != null)
			member.setGender(Integer.parseInt(request.getParameter("gender").trim())); // trim : 양옆 공백 없애기

		member.setPhone(request.getParameter("phone"));

		EmployeesDAO edao = EmployeesDAO.getInstance();
		edao.updateMember(member);

		EmployeesVO emp = edao.getMember(member.getId());
		request.setAttribute("member", emp);
		request.setAttribute("message", "회원 정보가 수정 되었습니다");

		session.setAttribute("loginUser", emp);

		int result = edao.userCheck(member.getId(), member.getPass(), member.getLev());
		session.setAttribute("result", result);

		String url = "joinSuccess.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);

	}

}
