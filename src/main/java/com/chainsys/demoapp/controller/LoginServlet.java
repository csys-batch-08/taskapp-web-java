package com.chainsys.demoapp.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chainsys.demoapp.model.User;
import com.chainsys.demoapp.service.UserService;
import com.chainsys.demoapp.validator.UserValidator;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		User user=UserValidator.validateUser(email, pass);
		if(user!=null)
		{
			HttpSession session=request.getSession();
			session.setAttribute("user", user);
			request.setAttribute("user", user);
			System.out.println(user.getName());
			response.sendRedirect("addTask.jsp");
			
		}
		else
		{
			request.setAttribute("user", user);
			response.sendRedirect("login.jsp");
		}
 }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
