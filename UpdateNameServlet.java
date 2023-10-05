package com.Servlet;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.Dao.DatabaseConnectivity;

/**
 * Servlet implementation class UpdateNameServlet
 */
public class UpdateNameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateNameServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		jakarta.servlet.http.HttpSession httpSession = request.getSession();
		String roll=httpSession.getAttribute("studentRollno").toString();
		int rollno=Integer.parseInt(roll);
		System.out.println(rollno);
		String name = request.getParameter("name");
		int status = DatabaseConnectivity.updateName(name, rollno);
		if (status > 0) {
			response.sendRedirect("UpdateSuccess.jsp");
		} else {
			response.sendRedirect("UpdateError.jsp");
		}
	}

}
