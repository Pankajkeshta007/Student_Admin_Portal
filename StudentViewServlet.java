package com.Servlet;

import java.io.IOException;




import java.util.List;

import com.Dao.DatabaseConnectivity;
import com.Dao.studentRecord;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class StudentViewServlet
 */
public class StudentViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	  public void service(HttpServletRequest request, HttpServletResponse response) 
              throws ServletException, IOException 
              {
		  List<studentRecord> records=DatabaseConnectivity.display();
			
			
			request.setAttribute("studentDetails", records);

			  request.getRequestDispatcher("StudentView.jsp").forward(request,response);
              }

}
