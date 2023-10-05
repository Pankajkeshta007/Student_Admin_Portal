<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	background-image:
		url('https://i.pinimg.com/originals/69/e3/3d/69e33dbe9efa230e17472c04b924a104.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}
 .blink {
                animation: blinker 1.5s linear infinite;
                color: red;
                font-family: sans-serif;
                font-size:30px;
            }
            @keyframes blinker {
                50% {
                    opacity: 0;
                }
            }
.container {
	max-width: 400px;
	margin: 0 auto;
	padding: 20px;
	background-color:light pink ;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
	border-radius: 5px;
}

h2 {
	text-align: center;
}

label {
	display: block;
	margin-bottom: 5px;
}

input[type="text"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

.btn-container {
	text-align: center;
}

.btn-container a {
	text-decoration: none;
	padding: 10px 20px;
	margin: 5px;
	background-color: #007bff;
	color: #fff;
	border-radius: 5px;
	transition: background-color 0.3s ease;
}

.btn-container a:hover {
	background-color: #0056b3;
}
input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            margin:5px;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

     input[type="submit"]:hover {
            background-color: #0056b3;
        }
</style>
<meta charset="UTF-8">
<title>Update Age</title>
</head>
<header>

<marquee class="blink"><b><i>Atal Bihari Vajpayee Govt Institute of Engineering & Technology Pragatinagar(Shimla)</i></b></marquee>

</header>
<body>
<%
String stuRollno=session.getAttribute("rollno").toString();
session.setAttribute("studentRollno", stuRollno);
%>
	<div class="container">
		<h2>Student Update Menu</h2>
		<form action ="UpdateAgeServlet" method="post">
			<label for="rollno">Age:</label> <input type="text"
				id="age" name="age" placeholder="Enter new age  of student " required><br>
			<br>
			<div class="btn-container">
				<a href="SelectFieldForUpdate.jsp">Back</a>
				 <input type="submit" value="Submit">
				 
			</div>
		</form>
	</div>
</body>
</html>