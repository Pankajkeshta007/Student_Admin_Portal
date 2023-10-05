package com.Servlet;

import java.io.IOException;


import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.Dao.DatabaseConnectivity;
import com.Dao.studentRecord;

/**
 * Servlet implementation class StudentLoginServlet
 */
public class StudentLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentLoginServlet() {
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
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		boolean status=DatabaseConnectivity.studentValidate(email, password);
		System.out.println(email);
		System.out.println(password);
		if(status)
		{
		
			
		studentRecord data=DatabaseConnectivity.studentDisplay(email,password);
			data.setRollno(data.getRollno());
			data.setName(data.getName());
			data.setEmail(data.getEmail());
			data.setPassword(data.getPassword());
			data.setBranch(data.getBranch());
			data.setSemester(data.getSemester());
			data.setAge(data.getAge());
			data.setAddress(data.getAddress());
			data.setFathername(data.getFathername());
			data.setCourse(data.getCourse());
			data.setContactno(data.getContactno());
			
			
			
			
			request.setAttribute("data", data);
			
		    
		     request.getRequestDispatcher("StudentDataDisplay.jsp").forward(request,response);
		
			
		}
		else
	    {
		response.sendRedirect("StudentLoginFailed.jsp");
	    }
		
	}

}
