package com.Servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.Dao.DatabaseConnectivity;

/**
 * Servlet implementation class UpdateFatherNameServlet
 */
public class UpdateFatherNameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateFatherNameServlet() {
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
		jakarta.servlet.http.HttpSession httpSession = request.getSession();
		String roll=httpSession.getAttribute("studentRollno").toString();
		int rollno=Integer.parseInt(roll);
		String fathername = request.getParameter("fathername");
		int status = DatabaseConnectivity.updateFatherName(fathername, rollno);
		if (status > 0) {
			response.sendRedirect("UpdateSuccess.jsp");
		} else {
			response.sendRedirect("UpdateError.jsp");
		}
	}

}
