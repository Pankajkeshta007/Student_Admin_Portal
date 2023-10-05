 package com.Servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.Dao.DatabaseConnectivity;

/**
 * Servlet implementation class StudentDeleteServlet
 */
public class StudentDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	 public void service(HttpServletRequest request, HttpServletResponse response) 
             throws ServletException, IOException 
             {
		 int rollno=Integer.parseInt(request.getParameter("rollno"));
			int  status=DatabaseConnectivity.delete(rollno);
			if(status>0)
			{
				response.sendRedirect("DeleteSuccess.jsp");
			}
			else
			{
				response.sendRedirect("DeleteError.jsp");
			}
			
             }

}
