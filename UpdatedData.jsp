<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>

body{
background-color: cyan;

}
h1{
color:blue;
font-family:algerian;

}
</style>

<meta charset="UTF-8">
<title>Updated Data</title>
</head>
<body>
<center>
<fieldset style="width:400px; height:800px;">
<h1>STUDENT UPDATE</h1>
<form action="StudentUpdateDataServlet" method="post">
Roll No. <input type="number" name="rollno" placeholder="enter roll no. here" required><br><br>
Name :<input type="text" name="name" placeholder="enter name here" required><br><br>
Email Id :<input type="text" name="email" placeholder="enter emailId here" required><br><br>
Password :<input type="password" name="password" placeholder="enter password here" required><br><br>
Branch :<input type="text" name="branch" placeholder="enter branch here" required><br><br>
Semester :<input type="text" name="semester" placeholder="enter semester here" required><br><br>
Age :<input type="number" name="age" placeholder="enter age here" required><br><br>
Address:<textarea rows="4" cols="50" name="address" placeholder="enter address here" required></textarea><br><br>
Father Name :<input type="text" name="fathername" placeholder="enter father name here" required><br><br>
Course :<input type="text" name="course" placeholder="enter course here" required><br><br>
Contact No. <input type="number" name="contactno" placeholder="enter contact no. here" required><br><br>
<input type="submit" value="Update Student"  style="font-size:20px; background-color:yellow;"><br><br>




</form>
<form action="AdminSection.jsp" method="post">
<input type="submit" value="Back" name="back"  style="font-size:20px; background-color:yellow;"><br><br>
</form>

</fieldset>
</center>

</body>
</html>