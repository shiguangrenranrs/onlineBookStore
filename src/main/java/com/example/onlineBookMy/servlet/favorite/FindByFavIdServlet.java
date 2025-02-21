package com.example.onlineBookMy.servlet.favorite;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.onlineBookMy.bean.Favorite;
import com.example.onlineBookMy.dao.IFavoriteDAO;
import com.example.onlineBookMy.dao.impl.FavoriteDAOImpl;

public class FindByFavIdServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		IFavoriteDAO dao = new FavoriteDAOImpl();
		Favorite favorite = dao.findById(id);
		request.setAttribute("favorite", favorite);
		//请求转发
		RequestDispatcher rd = request.getRequestDispatcher("/background/updateFav.jsp");
		rd.forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}
}
