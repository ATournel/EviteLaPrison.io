package com.elp.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.elp.dao.UserDao;
import com.elp.model.User;

/**
 * Servlet implementation class SignInController
 */
@WebServlet("/SignInController")
public class SignInController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignInController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession hSession = request.getSession(true);
		UserDao dao = new UserDao();
		
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		
		User user = dao.controlUser(email, pwd);
		
		if(user != null) {
			hSession.setAttribute("userId", user.getUserid());
			hSession.setAttribute("isConnected", true);
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
		else {
			request.setAttribute("invalidLogin", "Adresse email ou mot de passe incorrects!");
			request.getRequestDispatcher("signInUp.jsp").forward(request, response);
		}
		
		
		
	}

}
