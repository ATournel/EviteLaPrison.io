package com.elp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import com.elp.dao.MasterDao;
import com.elp.dao.UserDao;
import com.elp.model.User;

/**
 * Servlet implementation class SignInUpServlet
 */
@WebServlet("/SignInUpServlet")
public class SignInUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignInUpServlet() {
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
		
		MasterDao masterDao = new MasterDao();
		UserDao dao = new UserDao();
		
		Session session = masterDao.transactionCreate();
		session.beginTransaction();
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String dob = request.getParameter("dob");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		
		User user = new User();
		
		masterDao.addNewUser(dao, user, firstName, lastName, dob, email, pwd);
		
		masterDao.transactionClose(session, user);
		
	}

}
