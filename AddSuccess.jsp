<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>
body {
	background-color: #007BFF;
	font-family: Arial, sans-serif;
	text-align: center;
	background-image:
		url('https://i.pinimg.com/originals/69/e3/3d/69e33dbe9efa230e17472c04b924a104.jpg');
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

.container {
	background-color: light pink;
	border-radius: 10px;
	padding: 20px;
	max-width: 400px;
	margin: 100px auto;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

h1 {
	color: #333;
}

p {
	font-size: 24px;
	color: #333;
	margin-bottom: 20px;
}

a {
	text-decoration: none;
	background-color: #333;
	color: #fff;
	padding: 10px 20px;
	border-radius: 5px;
	transition: background-color 0.3s;
}

a:hover {
	background-color: #555;
}
</style>
<meta charset="UTF-8">
<title>Add Success</title>
</head>
<body>
<header>
<marquee class="blink"><b><i>Atal Bihari Vajpayee Govt Institute of Engineering & Technology Pragatinagar(Shimla)</i></b></marquee>

</header>
	<div class="container">
		<h1>Success !</h1>
		<p>Student added successfully</p>
		<a href="AdminSection.jsp">Go Back</a>
	</div>
</body>
</html>