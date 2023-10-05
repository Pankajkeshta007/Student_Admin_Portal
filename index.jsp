<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
  body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
               height: 100vh;
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            transition: background-image 1s ease-in-out;
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

        .navbar {
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

        .login-container {
            float: right;
        }

        .login-container a {
            padding: 14px 20px;
            margin: 8px 0;
            background-color: #333;
            border: none;
            color: white;
            font-size: 16px;
            cursor: pointer;
            text-decoration: none;
        }

        .login-container a:hover {
            background-color: #ddd;
            color: black;
        }

        .login-container a.admin-login {
            background-color: #ff5733;
        }

        .login-container a.student-login {
            background-color: #3498db;
        }

        /* Clear floats */
        .clearfix::after {
            content: "";
            clear: both;
            display: table;
        }
        h1{
        color:yellow;
        font-family:algerian;
        font-size:40px;
        text-align: center;
        
        }
       
</style>
<meta charset="UTF-8">
<title>Main Menu</title>
</head>
<body >
 <script>
        // Array of background images
        const backgroundImages = [
            'https://tse1.mm.bing.net/th?id=OIP.-T12PgBozYqVmiQYQ36heQHaE8&pid=Api&P=0&h=220',
            'https://tse1.mm.bing.net/th?id=OIP.-nD7n8OCsi30KOd6oYZ8mgHaEK&pid=Api&P=0&h=220',
            'https://tse2.mm.bing.net/th?id=OIP.xWRgp6SAcV-ve4qilu3BhAHaFj&pid=Api&P=0&h=220',
        ];

        let currentIndex = 0;

        function changeBackground() {
            document.body.style.backgroundImage = `url(${backgroundImages[currentIndex]})`;
            currentIndex = (currentIndex + 1) % backgroundImages.length;
        }

        // Initial background
        changeBackground();

        // Change background every 5 seconds (5000 milliseconds)
        setInterval(changeBackground, 5000);
    </script>
<marquee class="blink"><b><i>Atal Bihari Vajpayee Govt Institute of Engineering & Technology Pragatinagar(Shimla)</i></b></marquee>
<header>

<h1>STUDENT ADMIN PORTAL </h1>
</header>
  <div class="navbar">
        <a href="#">Home</a>
        <a href="About.jsp">About</a>
        <a href="Contact.jsp">Contact</a>
        <div class="login-container">
            <a href="AdminLogin.jsp" class="admin-login">Admin Login</a>
            <a href="StudentLogin.jsp" class="student-login">Student Login</a>
        </div>
    </div>

    <div class="clearfix"></div>
</body>
</html>