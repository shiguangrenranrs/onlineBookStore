package com.example.onlineBookMy.servlet.sysAdmin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.onlineBookMy.bean.SysAdmin;
import com.example.onlineBookMy.dao.ISysAdminDAO;
import com.example.onlineBookMy.dao.impl.SysAdminDAOImpl;

public class FindByAdminIdServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		ISysAdminDAO adminDAO = new SysAdminDAOImpl();
		SysAdmin admin = adminDAO.findById(id);
		request.setAttribute("admin", admin);
		RequestDispatcher rd = request.getRequestDispatcher("/background/updateAdmin.jsp");
		rd.forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
