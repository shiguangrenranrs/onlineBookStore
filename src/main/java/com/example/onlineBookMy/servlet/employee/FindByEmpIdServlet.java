package com.example.onlineBookMy.servlet.employee;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.onlineBookMy.bean.Employee;
import com.example.onlineBookMy.dao.IEmployeeDAO;
import com.example.onlineBookMy.dao.impl.EmployeeDAOImpl;

public class FindByEmpIdServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		IEmployeeDAO employeeDAO = new EmployeeDAOImpl();
		int id = Integer.parseInt(request.getParameter("id"));
		Employee emp = employeeDAO.findById(id);
		request.setAttribute("emp", emp);
		RequestDispatcher rd = request.getRequestDispatcher("/background/updateEmp.jsp");
		rd.forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
