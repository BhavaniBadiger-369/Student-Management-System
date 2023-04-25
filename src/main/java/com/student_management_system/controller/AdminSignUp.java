package com.student_management_system.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.student_management_system.dao.AdminDao;
import com.student_management_system.dto.Admin;
@WebServlet("/SignUp")
public class AdminSignUp  extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String name=req.getParameter("AdminName");
	String email=req.getParameter("AdminEmail");
	String Password= req.getParameter("AdminPassword");
	
	Admin admin=new Admin();
	admin.setAdminName(name);
	admin.setAdminEmail(email);
	admin.setAdminPassword(Password);
	
	AdminDao dao=new AdminDao();
	dao.AdminSignUp(admin);
	
	req.getRequestDispatcher("AdminLogin.jsp").forward(req, resp);
	
	}

}
