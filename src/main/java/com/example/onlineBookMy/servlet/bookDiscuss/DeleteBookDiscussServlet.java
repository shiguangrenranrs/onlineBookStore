package com.example.onlineBookMy.servlet.bookDiscuss;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.onlineBookMy.dao.IBookDiscussDAO;
import com.example.onlineBookMy.dao.impl.BookDiscussDAOImpl;

public class DeleteBookDiscussServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		IBookDiscussDAO dao = new BookDiscussDAOImpl();
		String msg = "删除书评失败！";
		if(dao.delete(id)) {
			msg = "删除书评成功！";
		}
		request.setAttribute("msg", msg);
		request.setAttribute("returnPath", "/FindAllBookDiscussServlet?nowPage=1");
		RequestDispatcher rd = request.getRequestDispatcher("/background/message.jsp");
		rd.forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
