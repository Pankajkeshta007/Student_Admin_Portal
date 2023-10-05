<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<style>
 body {
            background-color: #f4f4f4;
            font-family: Arial, sans-serif;
            background-image: url('https://i.pinimg.com/originals/69/e3/3d/69e33dbe9efa230e17472c04b924a104.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
        }
         .blink {
                animation: blinker 1.5s linear infinite;
                color: blue;
                font-family: sans-serif;
                font-size:30px;
            }
            @keyframes blinker {
                50% {
                    opacity: 0;
                }
            }

        .login-container {
            background-color: light pink;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            margin-top: 50px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        .input-group {
            margin-bottom: 20px;
        }

        .input-group label {
            display: block;
            margin-bottom: 5px;
            color: #555;
        }

        .input-group input[type="text"],
        .input-group input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }

        .btn:hover {
            background-color: #555;
        }



</style>
</head>
<body>
<marquee class="blink"><b><i>Atal Bihari Vajpayee Govt Institute of Engineering & Technology Pragatinagar(Shimla)</i></b></marquee>
 <div class="login-container">
        <h1><center>Admin Login</center></h1>
        <form action="AdminLoginSection" method="post">
            <div class="input-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="name" required>
            </div>
            <div class="input-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit" class="btn">Login</button>
        </form>
    </div>
</body>
</html>