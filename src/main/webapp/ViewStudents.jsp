<%@page import="com.student_management_system.dto.Admin"%>
<%@page import="com.student_management_system.dto.Student"%>
<%@page import="java.util.List"%>
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
display: flex;
flex-direction: column;
align-items: center;

}
table, th, td {
	border-color: white;
	background-color: lightgrey;
	border-collapse: collapse;
}
table, th, td:hover {
	border-color: white;
	background-color:coral;
	border-collapse: collapse;
	text-align: center;
}

h1:hover{
background-color: black;
color: white;

}
div {
margin-left:100px;
margin-top:30px;
	position: fixed;
	width: 100%;

}
.home{
	text-decoration: none;
	color:red;
	font-size:x-large;
	}
.home:hover {
	color: green;
	font-size:xx-large;
}
a{
text-decoration: none;
color:black;
}
</style>



<body>

<%   Admin admin=(Admin) session.getAttribute("admin");
if(admin!=null){
List<Student> students =(List) request.getAttribute("students");%>

<h1>Students List</h1>

<table border="none" cellpadding="10px" cellspacing="0"    >
<tr>
<th>Student_Id</th>
<th>Student_Name</th>
<th>Student_PhoneNumber</th>
<th>Student_Email</th>
<th>Student_Fee</th>
<th>Update_Student</th>
<th>Delete_Student</th>

</tr>
<%for(Student student: students){ %>
<tr>

<td><%=student.getStudentId() %></td>
<td><%= student.getStudentName() %></td>
<td><%=student.getStudentPhoneNumber() %></td>
<td><%=student.getStudentEmail() %></td>
<td><%=student.getStudentFee() %></td>
<td><a href="UpdateStudent?studentId=<%=student.getStudentId()%>">Update</a></td>
<td><a href="DeleteStudent?studentId=<%=student.getStudentId()%> ">Delete</a></td>


</tr>
<% } %>

</table>
<div><a class="home" href="Dashboard.jsp">Home</a></div>
<%}else{
	response.sendRedirect("AdminLogin.jsp");
}

%>
</body>
</html>