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
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
      rd.forward(request, response);
   
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("UTF-8");
      String id = request.getParameter("id");
      String pwd = request.getParameter("pwd");
      String lev = request.getParameter("lev");
      
      String url = null;
      
      EmployeesDAO edao = EmployeesDAO.getInstance();
      int result = edao.userCheck(id, pwd, lev);
      
      if(result ==2 || result == 3) {
         EmployeesVO emp = new EmployeesVO();
         emp = edao.getMember(id);
         
         HttpSession session = request.getSession();
         session.setAttribute("loginUser", emp);
         session.setAttribute("result", result);
         url = "main.jsp";
         
      }else {
         url="login.jsp";
         if(result ==1) {
            request.setAttribute("message", "레벨이 불일치 합니다");
         }else if(result ==0) {
            request.setAttribute("message", "비밀번호가 불일치 합니다");
         }else {
            request.setAttribute("message", "ID가 존재하지 않습니다.");
         }
      }
      
      RequestDispatcher rd = request.getRequestDispatcher(url);
      rd.forward(request, response);
      
   }

}
