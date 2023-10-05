package com.Servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.Dao.DatabaseConnectivity;

/**
 * Servlet implementation class StudentAddServlet
 */
public class StudentAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentAddServlet() {
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
	 int rollno=Integer.parseInt(request.getParameter("rollno"));
	 String name=request.getParameter("name");
	 String email=request.getParameter("email");
	 String password=request.getParameter("password");
	 String branch=request.getParameter("branch");
	 String semester=request.getParameter("semester");
	 int age=Integer.parseInt(request.getParameter("age"));
	 String address=request.getParameter("address");
	 String fathername=request.getParameter("fathername");
	 String course=request.getParameter("course");
	 String contactno=request.getParameter("contactno");
	 int status=DatabaseConnectivity.save(rollno, name, email, password, branch, semester, age, address, fathername, course, contactno);
	 
	 if(status>0) {
	 response.sendRedirect("AddSuccess.jsp");
	 }
	 else
	 {
		 response.sendRedirect("AddError.jsp");
	 }
	}

}  