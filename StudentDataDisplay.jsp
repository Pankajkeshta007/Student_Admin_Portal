<%@page import="java.sql.ResultSet"%>
<%@page import="com.Dao.studentRecord"%>
<%@page import="java.sql.*"%>
<%@page import="com.Dao.DatabaseConnectivity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	background-image:
		url('https://i.pinimg.com/originals/69/e3/3d/69e33dbe9efa230e17472c04b924a104.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}

.container {
	max-width: 800px;
	margin: 0 auto;
	padding: 20px;
	background-color:  pink;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
	border-radius: 10px;
}

h1 {
	text-align: center;
}

.student-profile {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
}

.student-image {
	width: 150px;
	height: 150px;
	border-radius: 50%;
	border: 2px solid #007bff;
	overflow: hidden;
}

.student-image img {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.student-details {
	width: calc(100% - 150px);
}

table {
	width: 100%;
}

table, th, td {
	border: 1px solid #ddd;
	border-collapse: collapse;
}

th, td {
	padding: 10px;
	text-align: left;
}

th {
	background-color: #007bff;
	color: #fff;
}

.student-details th {
	width: 30%;
}

.student-details td {
	width: 70%;
}

.view-more {
	text-align: center;
	margin-top: 20px;
}

.view-more a {
	text-decoration: none;
	background-color: #007bff;
	color: #fff;
	padding: 10px 20px;
	border-radius: 5px;
}

.view-more a:hover {
	background-color: #0056b3;
}
</style>
<meta charset="UTF-8">
<title>Display Single student Record</title>
</head>
<body>


	<%
	studentRecord stu = (studentRecord) request.getAttribute("data");
	%>







	<div class="container">
		<h1>
			<b>Welcome <%=stu.getName()%> !
			</b>
		</h1>
		<div class="student-profile">
			<div class="student-image">
				<img src="https://tse1.mm.bing.net/th?id=OIP.3n0KtLF6Tc3VObu23JnOZAHaHN&pid=Api&P=0&h=220"
					alt="Student Image">
			</div>
			<div class="student-details">
				<table>
					<tr>
						<th>Field</th>
						<th>Details</th>
					</tr>
					<tr>
						<td>Roll Number:</td>
						<td><%=stu.getRollno()%></td>
					</tr>
					<tr>
						<td>Name:</td>
						<td><%=stu.getName()%></td>
					</tr>
					<tr>
						<td>Email:</td>
						<td><%=stu.getEmail()%></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><%=stu.getPassword()%></td>
					</tr>
					<tr>
						<td>Branch:</td>
						<td><%=stu.getBranch()%></td>
					</tr>
					<tr>
						<td>Semester:</td>
						<td><%=stu.getSemester()%></td>
					</tr>
					<tr>
						<td>Age:</td>
						<td><%=stu.getAge()%></td>
					</tr>
					<tr>
						<td>Father's Name:</td>
						<td><%=stu.getFathername()%></td>
					</tr>
					<tr>
						<td>Address:</td>
						<td><%=stu.getAddress()%></td>
					</tr>
					<tr>
						<td>Course:</td>
						<td><%=stu.getCourse()%></td>
					</tr>
					<tr>
						<td>Contact Number:</td>
						<td><%=stu.getContactno()%></td>
					</tr>
				</table>
				<div class="view-more">
					<a href="index.jsp">Logout</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>