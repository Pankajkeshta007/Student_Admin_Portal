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

        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: light pink;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            text-align: center;
        }

        h1 {
            color: #333;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="number"],
        input[type="text"],
        input[type="email"],
        input[type="password"],
        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        select {
            appearance: none;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

      
    </style>
<meta charset="UTF-8">
<title>Student Add</title>
</head>
<body>
 <div class="container">
        <h1>Student Add</h1>
        <form action="StudentAddServlet" method="post">
            <div class="form-group">
                <label for="rollno">Roll No:</label>
                <input type="number" id="rollno" name="rollno" required>
            </div>
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="branch">Branch:</label>
                <select id="branch" name="branch" required>
                <option>Select Branch for student</option>
                    <option value="Computer Science Engineering">Computer Science Engineering</option>
                    <option value="Electronics & Communication Engineering">Electronics & Communication Engineering</option>
                    <option value="Mechanical Engineering">Mechanical Engineering</option>
                    <option value="Electrical Engineering">Electrical Engineering</option>
                    <option value="Civil Engineering">Civil Engineering</option>
                </select>
            </div>
            <div class="form-group">
                <label for="semester">Semester:</label>
                <select id="semester" name="semester" required>
                <option value="select">Select semester for student</option>
                 <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                </select>
            </div>
            <div class="form-group">
                <label for="age">Age:</label>
                <input type="text" id="age" name="age" required>
            </div>
            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" required>
            </div>
            <div class="form-group">
                <label for="fathername">Father's Name:</label>
                <input type="text" id="fathername" name="fathername" required>
            </div>
            <div class="form-group">
                <label for="contact">Course:</label>
                <select id="contact" name="course" required>
                <option value="select">Select course for student</option>
                 <option value="Bachelor of Technology">Bachelor of Technology</option>
                    <option value="Master of Technology">Master of Technology</option>
                    <option value="Polytechnic">Polytechnic</option>
                    
                </select>
            </div>
            <div class="form-group">
                <label for="course">Contact Number</label>
                <input type="text" id="course" name="contactno" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Submit">
            </div>
        </form>
       
    </div>







</body>
</html>