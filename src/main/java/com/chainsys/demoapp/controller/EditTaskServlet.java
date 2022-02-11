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

/**
 * Servlet implementation class EditTaskServlet
 */
@WebServlet("/EditTaskServlet")
public class EditTaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		if (user == null) {
			response.getWriter().write("<script>alert('Login First');location='login.jsp';</script>");
			request.getRequestDispatcher("/login.jsp").include(request, response);
			
		} else {
			if(request.getParameter("tname")!=null && request.getParameter("priority")!=null && request.getParameter("status")!=null)
			{
			String taskName = request.getParameter("tname");
			String priority = request.getParameter("priority");
			String status=request.getParameter("status");
			Task task = new Task(0,taskName, user.getName(), priority, status, null);
			boolean result = TaskDAO.getInstance().updateTaskPriority(task);
			if (!result) {
				response.getWriter().write("<script>alert('only pending task can be modified');location='showtasks.jsp';</script>");
				request.getRequestDispatcher("/showtasks.jsp").include(request, response);
			} else {
				response.getWriter().write("<script>alert('Task updated Successfully');location='showtasks.jsp';</script>");
				request.getRequestDispatcher("/ShowTaskServlet").include(request, response);
			}
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
