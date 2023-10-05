
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            text-align: center;
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
               header {
               color:yellow;
               font-size:20px;
               font-family:algerian;

        }
        
         .navbar { 
          justify-content:space-evenly;
            background-color: #333;
            overflow: hidden;
        }

        .navbar a {
            float: left;
            font-size: 16px;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: light pink;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            border-radius: 10px;
        }

        h1 {
            color: blue;
        }

        .button-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px;
        }

        .button {
            width: 150px;
            height: 60px;
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 50px;
            font-size: 16px;
            text-decoration: none;
            display: flex;
            justify-content: center;
            align-items: center;
            transition: background-color 0.3s;
        }

        .button:hover {
            background-color: #0056b3;
        }
    </style>
<meta charset="UTF-8">
<title>Admin Section</title>
</head>
<body>
<header>
<marquee class="blink"><b><i>Atal Bihari Vajpayee Govt Institute of Engineering & Technology Pragatinagar(Shimla)</i></b></marquee>
<h1>ADMIN SECTION </h1>
</header>
 <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="#">About</a>
        <a href="#">Contact</a>
        
    </div>

    <div class="clearfix"></div><br><br>
<div class="container">
     
        <div class="button-container">
            <a class="button" href="StudentAdd.jsp">Add Student</a>
            
            <a class="button" href="StudentViewServlet">View Student</a>
            <a class="button" href="StudentUpdate.jsp">Update Student</a>
            <a class="button" href="StudentDelete.jsp">Delete Student</a>
            <a class="button" href="index.jsp">Logout</a>
            
            
        </div>
    </div>
</body>
</html>