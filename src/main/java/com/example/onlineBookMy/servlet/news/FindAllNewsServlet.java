package com.example.onlineBookMy.servlet.news;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.onlineBookMy.bean.News;
import com.example.onlineBookMy.common.Config;
import com.example.onlineBookMy.dao.INewsDAO;
import com.example.onlineBookMy.dao.impl.NewsDAOImpl;

public class FindAllNewsServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<News> newsList = null;
		int pageSize = Config.PAGESIZE;
		int nowPage = Integer.parseInt(request.getParameter("nowPage"));
		int pageCount = 0;
		INewsDAO newsDAO = new NewsDAOImpl();
		newsList = newsDAO.getNowPage(nowPage, pageSize);
		pageCount = newsDAO.getPageCount(pageSize);
		//把list集合放入在request范围内——界面上显示的三个数据
		request.setAttribute("news", newsList);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("pageCount", pageCount);
		//由servlet转跳到jsp中
		RequestDispatcher rd = request.getRequestDispatcher("/background/newsList.jsp");
		rd.forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}
}
