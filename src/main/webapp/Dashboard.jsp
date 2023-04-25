<%@page import="com.student_management_system.dto.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student-Management-System</title>
</head>
<style>
body{
height:80vh;
width:100vw;
display:flex;
flex-direction: column;
align-items: center;
justify-content: center;
background-image:url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSb-VlZ-yUhEB7YWYLuNWmYWXNqPNIekC_Jnw&usqp=CAU");
}
a{
padding: .5em 1em;
font-size: 1.3 em;
border: 2px solid coral;
border-radius: 50px;
text-decoration: none;
color: white;
margin: 0.5em;
}
a:hover{
background-color:lime;
border-color: white;
color:black;
font-style:inherit;
font-size:x-large;
}

h1{
font-size: 7rem;
font-style:italic;
color: white;
box-shadow: 3px 3px 20px
}
h3{
padding:8px;
border: 2px solid grey;
color: white;
}
h3:hover {
border: 2px solid white;
color:black;
background-color:silver;
font-size:x-large;
font-style:oblique;
}
.Logout{
width:100%;
position:fixed;
}
</style>
<body>
<%   Admin admin=(Admin)  session.getAttribute("admin");
if(admin!=null){
%>
<h1>Welcome Admin</h1>
<h3>U can manage Student Data here!</h3>
<br><br>
<div>
<a  href="SaveStudent.jsp">Save_Student</a>
<a href="ViewStudents">View_Students</a>

</div>
<%}else{
	response.sendRedirect("AdminLogin.jsp");
	
	}%>

<div  class="Logout" ><a href="Logout"  >Logout</a></div>
</body>
</html>