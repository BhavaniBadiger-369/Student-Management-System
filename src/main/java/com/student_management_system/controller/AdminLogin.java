package com.student_management_system.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.student_management_system.dao.AdminDao;
import com.student_management_system.dto.Admin;

@WebServlet("/Login")
public class AdminLogin extends HttpServlet {
 @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String email=req.getParameter("AdminEmail");
	String password=req.getParameter("AdminPassword");
	
	AdminDao dao=new AdminDao();
Admin admin=dao.AdminLogin(email, password);
	
if(admin!=null)
{
//get session method  will check if there is any previous session started anywhere before in this project for the particular browser
	//if there is no session found a new session object is created or else the existing session object will be given
	HttpSession session=   req.getSession();
	session.setAttribute("admin", admin);
	req.getRequestDispatcher("Dashboard.jsp").forward(req, resp);

}else {
	resp.sendRedirect("AdminSignUp.jsp");
}

}
	
}
