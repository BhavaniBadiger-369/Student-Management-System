<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student-Management-System</title>
</head>
<style>
html {
	overflow: hidden;
}
body {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 100vw;
	height: 90vh;
	font-family: 'Poppins', sans-serif;
	 background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCW-Wg2QHcR_o2IAfmNyKzzxgxIZjaXd2qi01FzLTDww&s");
}
form {
	width: 40%;
	height: max-content;
	border: 3px solid #565656;
	border-radius: 20px;
	padding: 1rem;
}
input {
	width:90%;
	padding: .5em 1em;
	font-size: 1.3rem;
	font-weight: 500;
	border: 0;
	border-bottom: 3px solid #565656;
}
.button {
	width: 30%;
	border: 3px solid #565656;
	border-radius: 50px;
	text-decoration: none;
	color: #303030;
	margin-top: 2rem;
	font-weight: 600;
}
.button:hover {
	background-color:green;
	border: 3px solid salmon;
	color:white;
}
h2 {
	font-size: 2rem;
}
</style>
<body>
<form action="saveStudent" method="post">
<h2>Save Student</h2>
<input     type="text" name="studentName" placeholder="Enter Student Name:"> <br> <br>
<input  type="text" name="studentPhoneNumber" placeholder="Enter Student Phone Number:"> <br> <br>
<input    type="email" name="studentEmail" placeholder="Enter Student Email:"> <br><br>
<input  class="button"   type="submit" value="Save">

</body>
</html>