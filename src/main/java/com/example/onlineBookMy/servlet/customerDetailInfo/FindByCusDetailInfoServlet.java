package com.example.onlineBookMy.servlet.customerDetailInfo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.onlineBookMy.bean.CustomerDetailInfo;
import com.example.onlineBookMy.dao.ICustomerDetailInfoDAO;
import com.example.onlineBookMy.dao.impl.CustomerDetailInfoDAOImpl;

public class FindByCusDetailInfoServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		ICustomerDetailInfoDAO dao = new CustomerDetailInfoDAOImpl();
		CustomerDetailInfo info = dao.findById(id);
		request.setAttribute("info", info);
		RequestDispatcher rd = request.getRequestDispatcher("/background/updateDetailInfo.jsp");
		rd.forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
