package com.chainsys.demoapp.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chainsys.demoapp.dao.TaskDAO;
import com.chainsys.demoapp.model.Task;
import com.chainsys.demoapp.model.User;
import com.chainsys.demoapp.service.UserService;

/**
 * Servlet implementation class AddTaskServlet
 */
@WebServlet("/AddTaskServlet")
public class AddTaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		if (user == null) {
			response.getWriter().write("<script>alert('Login First');location='login.jsp';</script>");
			request.getRequestDispatcher("login.jsp").include(request, response);
			
		} else {
			String taskName = request.getParameter("tname");
			String priority = request.getParameter("priority");
			Task task = new Task(taskName, user.getName(), priority, "Pending", new Date());
			boolean result = TaskDAO.getInstance().insertTask(task);
			if (!result) {
				response.getWriter().write("<script>alert('Something went wrong try after some time');location='addTask.jsp';</script>");
				request.getRequestDispatcher("addTask.jsp").include(request, response);
			} else {
				response.getWriter().write("<script>alert('Task Added Successfully');location='showtasks.jsp';</script>");
				request.getRequestDispatcher("showtasks.jsp").include(request, response);
				response.sendRedirect("showtasks.jsp");
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
