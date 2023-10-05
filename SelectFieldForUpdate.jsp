<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
             background-image:
		url('https://i.pinimg.com/originals/69/e3/3d/69e33dbe9efa230e17472c04b924a104.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: light pink;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
        }

        h1 {
            text-align: center;
        }

        .button-row {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 20px; /* Space between buttons */
        }

        .oval-button {
            flex: 0 0 calc(25% - 20px); /* Four buttons in each line */
            background-color: #007bff;
            color: #fff;
            text-align: center;
            padding: 15px;
            border-radius: 50px; /* Oval shape */
            margin-bottom: 10px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none; /* Remove default link underline */
        }

        .oval-button:hover {
            background-color: #0056b3;
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
}

.btn-container a:hover {
	background-color: #0056b3;
}
    </style>
<meta charset="UTF-8">
<title>Update Fields </title>
</head>
<body>
 <div class="container">
        <h1>Select the field you want to update</h1>
        <div class="button-row">
            <a href="UpdateName.jsp" class="oval-button">Name</a>
            <a href="UpdateEmail.jsp" class="oval-button">Email</a>
            <a href="UpdatePassword.jsp" class="oval-button">Password</a>
            <a href="UpdateAge.jsp" class="oval-button">Age</a>
            <a href="UpdateSemester.jsp" class="oval-button">Semester</a>
            <a href="UpdateBranch.jsp" class="oval-button">Branch</a>
            <a href="UpdateAddress.jsp" class="oval-button">Address</a>
            <a href="UpdateFatherName.jsp" class="oval-button">Father's Name</a>
            <a href="UpdateCourse.jsp" class="oval-button">Course</a>
            <a href="UpdateContactno.jsp" class="oval-button">Contact No</a>
            	<div class="btn-container">
				<a href="AdminSection.jsp">Back</a>
				
				
			</div>
        </div>
    </div>
</body>
</html>