package com.Dao;

import java.sql.Connection;

import com.Dao.studentRecord;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DatabaseConnectivity {
	
	public static int save(int rollno,String name,String email,String password,String branch,String semester,int age,String address,String fathername,String course,String contactno)
	{
		int status=-1;

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_management", "root", "12345");
		//	Statement statement = connection.createStatement();
			String sql=" insert into student_data(rollno,name,email,password,branch,semester,age,address,fathername,course,contactno) values (?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps=connection.prepareStatement(sql);
			ps.setInt(1, rollno);
			
			ps.setString(2, name);
			ps.setString(3, email);
			ps.setString(4, password);
			ps.setString(5, branch);
			ps.setString(6, semester);
			ps.setInt(7, age);
			ps.setString(8, address);
			ps.setString(9, fathername);
			ps.setString(10, course);
			ps.setString(11, contactno);
			status=ps.executeUpdate();
			
						
	  
	}catch(Exception e)
		{
		e.printStackTrace();
		}
		
		return status;
	}
		
	
	public static List<studentRecord> display() {
		ResultSet rs =null;
		List<studentRecord> students = new ArrayList<studentRecord>();
			
			try {

				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_management", "root", "12345");

				String sql="select * from Student_data";
				PreparedStatement ps=connection.prepareStatement(sql);
			    rs=ps.executeQuery();
		
			
			
				
				while(rs.next()) {
					studentRecord student = new studentRecord();
					student.setRollno(rs.getInt(1));
					student.setName(rs.getString(2));
					student.setEmail(rs.getString(3));
					student.setPassword(rs.getString(4));
					student.setBranch(rs.getString(5));
					student.setSemester(rs.getString(6));
					student.setAge(rs.getInt(7));
					student.setAddress(rs.getString(8));
					student.setFathername(rs.getString(9));
					student.setCourse(rs.getString(10));
					student.setContactno(rs.getString(11));
					
					
					students.add(student);
					
				}
			 
			
					
		  
		}catch(Exception e)
			{
			e.printStackTrace();
			System.out.println("Hello");
			
			}
			
		return students;
		}
	public static int delete(int rollno)
	{
		

		int status=-1;

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_management", "root", "12345");
			String sql=" delete from Student_data where rollno = ?";
			PreparedStatement ps=connection.prepareStatement(sql);
			ps.setInt(1, rollno);
			
		
			status=ps.executeUpdate();
			
						
	  
	}catch(Exception e)
		{
		e.printStackTrace();
		}
		
return status;
	}
	
	public static boolean validate(int rollno)
	{
		boolean status=false;

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_management", "root", "12345");
			String sql=" select * from Student_data where rollno = ?";
			PreparedStatement ps=connection.prepareStatement(sql);
			ps.setInt(1, rollno);
			
		
			ResultSet rs=ps.executeQuery();
			status=rs.next();
						
	  
	}catch(Exception e)
		{
		e.printStackTrace();
		}
		return status;
		
	}
	public static int update(int rollno,String name,String email,String password,String branch,String semester,int age,String address,String fathername,String course,String contactno)
	{
		int status=-1;
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_management", "root", "1234");
			String sql=" update student_data set name,email,password,branch,semester,age,address,fathername,course,contactno where rollno=?";
			PreparedStatement ps=connection.prepareStatement(sql);
	
			
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, password);
			ps.setString(4, branch);
			ps.setString(5, semester);
			ps.setInt(6, age);
			ps.setString(7, address);
			ps.setString(8, fathername);
			ps.setString(9, course);
			ps.setString(10, contactno);
			ps.setInt(11,rollno);
			 status=ps.executeUpdate();
			
						
	  
	}catch(Exception e)
		{
		e.printStackTrace();
		}
		
		return status;
	}
	public static int updateName(String name,int rollno)
	{
		int status=-1;
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_management", "root", "12345");
			String sql=" update Student_data set name=?  where rollno = ?";
			PreparedStatement ps=connection.prepareStatement(sql);
	
			
			ps.setString(1, name);
			
			ps.setInt(2,rollno);
			 status=ps.executeUpdate();
			
						
	  
	}catch(Exception e)
		{
		e.printStackTrace();
		}
		
		return status;
	}
	
	public static int updateEmail(String email,int rollno)
	{
		int status=-1;
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_management", "root", "12345");
			String sql=" update student_data set email=?  where rollno=?";
			PreparedStatement ps=connection.prepareStatement(sql);
	
			
			ps.setString(1, email);
			
			ps.setInt(2,rollno);
			 status=ps.executeUpdate();
			
						
	  
	}catch(Exception e)
		{
		e.printStackTrace();
		}
		
		return status;
	}
	public static int updatePassword(String password,int rollno)
	{
		int status=-1;
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_management", "root", "12345");
			String sql=" update student_data set password=?  where rollno=?";
			PreparedStatement ps=connection.prepareStatement(sql);
	
			
			ps.setString(1, password);
			
			ps.setInt(2,rollno);
			 status=ps.executeUpdate();
			
						
	  
	}catch(Exception e)
		{
		e.printStackTrace();
		}
		
		return status;
	}
	public static int updateAge(String age,int rollno)
	{
		int status=-1;
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_management", "root", "12345");
			String sql=" update student_data set age=?  where rollno=?";
			PreparedStatement ps=connection.prepareStatement(sql);
	
			
			ps.setString(1, age);
			
			ps.setInt(2,rollno);
			 status=ps.executeUpdate();
			
						
	  
	}catch(Exception e)
		{
		e.printStackTrace();
		}
		
		return status;
	}
	public static int updateSemester(String semester,int rollno)
	{
		int status=-1;
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_management", "root", "12345");
			String sql=" update student_data set semester=?  where rollno=?";
			PreparedStatement ps=connection.prepareStatement(sql);
	
			
			ps.setString(1, semester);
			
			ps.setInt(2,rollno);
			 status=ps.executeUpdate();
			
						
	  
	}catch(Exception e)
		{
		e.printStackTrace();
		}
		
		return status;
	}
	public static int updateBranch(String branch,int rollno)
	{
		int status=-1;
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_management", "root", "12345");
			String sql=" update student_data set branch=?  where rollno=?";
			PreparedStatement ps=connection.prepareStatement(sql);
	
			
			ps.setString(1, branch);
			
			ps.setInt(2,rollno);
			 status=ps.executeUpdate();
			
						
	  
	}catch(Exception e)
		{
		e.printStackTrace();
		}
		
		return status;
	}
	public static int updateFatherName(String fathername,int rollno)
	{
		int status=-1;
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_management", "root", "12345");
			String sql=" update student_data set fathername=?  where rollno=?";
			PreparedStatement ps=connection.prepareStatement(sql);
	
			
			ps.setString(1, fathername);
			
			ps.setInt(2,rollno);
			 status=ps.executeUpdate();
			
						
	  
	}catch(Exception e)
		{
		e.printStackTrace();
		}
		
		return status;
	}
	public static int updateCourse(String course,int rollno)
	{
		int status=-1;
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_management", "root", "12345");
			String sql=" update student_data set course=?  where rollno=?";
			PreparedStatement ps=connection.prepareStatement(sql);
	
			
			ps.setString(1, course);
			
			ps.setInt(2,rollno);
			 status=ps.executeUpdate();
			
						
	  
	}catch(Exception e)
		{
		e.printStackTrace();
		}
		
		return status;
	}
	public static int updateContactno(String contactno,int rollno)
	{
		int status=-1;
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_management", "root", "12345");
			String sql=" update student_data set contactno=?  where rollno=?";
			PreparedStatement ps=connection.prepareStatement(sql);
	
			
			ps.setString(1, contactno);
			
			ps.setInt(2,rollno);
			 status=ps.executeUpdate();
			
						
	  
	}catch(Exception e)
		{
		e.printStackTrace();
		}
		
		return status;
	}
	public static int updateAddress(String address,int rollno)
	{
		int status=-1;
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_management", "root", "12345");
			String sql=" update student_data set address=? where rollno=?";
			PreparedStatement ps=connection.prepareStatement(sql);
	
			
			ps.setString(1, address);
			
			ps.setInt(2,rollno);
			 status=ps.executeUpdate();
			
						
	  
	}catch(Exception e)
		{
		e.printStackTrace();
		}
		
		return status;
	}
	public static boolean studentValidate(String email, String password) {
	boolean status=false;
		
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_management", "root", "12345");

			String sql="select * from Student_data where email=? and password=?";
			PreparedStatement ps=connection.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
		
			status=rs.next();
		 
	
				
	  
	}catch(Exception e)
		{
		e.printStackTrace();
		
		}
		return status;
	}
	public static studentRecord studentDisplay( String email, String password) {
		ResultSet rs =null;
		studentRecord student = new studentRecord();
			
			try {

				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_management", "root", "12345");

				String sql="select * from Student_data where email=? and password=?";
				PreparedStatement ps=connection.prepareStatement(sql);
				ps.setString(1, email);
				ps.setString(2, password);
				 rs=ps.executeQuery();
		
			
			
				
				while(rs.next()) {
					student.setRollno(rs.getInt(1));
					student.setName(rs.getString(2));
					student.setEmail(rs.getString(3));
					student.setPassword(rs.getString(4));
					student.setBranch(rs.getString(5));
					student.setSemester(rs.getString(6));
					student.setAge(rs.getInt(7));
					student.setAddress(rs.getString(8));
					student.setFathername(rs.getString(9));
					student.setCourse(rs.getString(10));
					student.setContactno(rs.getString(11));
					
				}
			 
			
					
		  
		}catch(Exception e)
			{
			e.printStackTrace();
			
			}
			
		return student;
		}





}
