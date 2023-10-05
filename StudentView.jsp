<%@page import="java.util.ArrayList"%>
<%@page import="com.Servlet.StudentUpdateDataServlet"%>
<%@page import="java.util.List"%>
<%@page import="com.Dao.studentRecord"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	background-image:
		url('https://i.pinimg.com/originals/69/e3/3d/69e33dbe9efa230e17472c04b924a104.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}

table {
	border-collapse: collapse;
	width: 80%;
	margin: 20px auto;
	background-color: #fff;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	border-radius: 10px;
}

th, td {
	padding: 12px 20px;
	text-align: left;
}

th {
	background-color: #007BFF;
	color: #fff;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

.table-container {
	max-height: 300px;
	overflow-y: auto;
}
h1{
font-size: 30px;
text-align: center;
font-family:  Arial, sans-serif;
color:red

}
       }
        .btn-container {
	text-align: center;
}

.btn-container a {
	text-decoration: none;
	padding: 10px 20px;
	margin: 5px;
	background-color: red;
	color: #fff;
	border-radius: 3px;
	transition: background-color 0.3s ease;

	float: right;
}

.btn-container a:hover {
	background-color: #0056b3;
}
</style>
<meta charset="UTF-8">
<title>Student Record</title>
</head>
<body>
	<h1><b>Student Records :</b></h1>






	<div class="table-container">
		<table>
			<thead>
				<tr>
					<th>Roll No</th>
					<th>Name</th>
					<th>Email</th>
					<th>Password</th>
					<th>Branch</th>
					<th>Semester</th>
					<th>Age</th>
					<th>Address</th>
					<th>Father's Name</th>
					<th>Course</th>
					<th>Contact No</th>
				</tr>

			</thead>
			<tbody>
				<!-- Add your student records here as table rows -->
				<tr>
					<%
					List<studentRecord> s = (ArrayList<studentRecord>) request.getAttribute("studentDetails");
					for (studentRecord studentData : s) {
					%>

					<td><%=studentData.getRollno()%></td>
					<td><%=studentData.getName()%></td>
					<td><%=studentData.getEmail()%></td>
					<td><%=studentData.getPassword()%></td>
					<td><%=studentData.getBranch()%></td>
					<td><%=studentData.getSemester()%></td>
					<td><%=studentData.getAge()%></td>
					<td><%=studentData.getAddress()%></td>
					<td><%=studentData.getFathername()%></td>
					<td><%=studentData.getCourse()%></td>
					<td><%=studentData.getContactno()%></td>
				</tr>
				<%
				}
				%>
				<!-- Add more rows as needed -->
			</tbody>
		</table>
	</div>

	<div class="btn-container">
				<a href="AdminSection.jsp">Back</a>


</div>
</body>
</html>