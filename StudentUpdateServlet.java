package com.Servlet;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.Dao.DatabaseConnectivity;

/**
 * Servlet implementation class StudentUpdateServlet
 */
public class StudentUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	 public void service(HttpServletRequest request, HttpServletResponse response) 
             throws ServletException, IOException 
             {
			int rollNo=Integer.parseInt(request.getParameter("rollno"));
			boolean status=DatabaseConnectivity.validate(rollNo);
			jakarta.servlet.http.HttpSession httpSession=request.getSession();
			httpSession.setAttribute("rollno", rollNo);
			if(status)
			{
				
				
			    response.sendRedirect("SelectFieldForUpdate.jsp");
			}
			else
			{
				response.sendRedirect("UpdateError.jsp");
			}
			
             }

}
