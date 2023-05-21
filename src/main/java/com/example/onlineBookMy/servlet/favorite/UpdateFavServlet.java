package com.example.onlineBookMy.servlet.favorite;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.onlineBookMy.bean.Favorite;
import com.example.onlineBookMy.common.DateConvert;
import com.example.onlineBookMy.dao.IFavoriteDAO;
import com.example.onlineBookMy.dao.impl.FavoriteDAOImpl;

public class UpdateFavServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Favorite favorite = new Favorite();
		int favoriteId = Integer.parseInt(request.getParameter("favoriteId"));
		favorite.setFavoriteId(favoriteId);
		favorite.setBookId(Integer.parseInt(request.getParameter("bookId")));
		favorite.setCustId(Integer.parseInt(request.getParameter("custId")));
		//将字符串转换为日期型
		String str = request.getParameter("date");
		Date date = DateConvert.convertToDate(str);
		favorite.setScdate(date);
		favorite.setContext(request.getParameter("context"));
		IFavoriteDAO dao = new FavoriteDAOImpl();
		String msg = "修改收藏夹信息失败！";
		String returnPath = "/FindByFavIdServlet?id="+favoriteId;
		if(dao.update(favorite)) {
			msg = "修改收藏夹信息成功！";
			returnPath = "/FindAllFavoriteServlet?nowPage=1";
		}
		request.setAttribute("msg", msg);
		request.setAttribute("returnPath", returnPath);
		RequestDispatcher rd = request.getRequestDispatcher("/background/message.jsp");
		rd.forward(request, response);
	}

}
