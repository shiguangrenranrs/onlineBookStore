package com.example.onlineBookMy.servlet.shoppingCart;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.onlineBookMy.bean.CustomerDetailInfo;
import com.example.onlineBookMy.bean.CustomerInfo;
import com.example.onlineBookMy.dao.ICustomerDetailInfoDAO;
import com.example.onlineBookMy.dao.ICustomerInfoDAO;
import com.example.onlineBookMy.dao.impl.CustomerDetailInfoDAOImpl;
import com.example.onlineBookMy.dao.impl.CustomerInfoDAOImpl;

public class QtLoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doPost(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //得到用户名和密码
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println(username);
        System.out.println(password);
        ICustomerInfoDAO customerInfoDAO = new CustomerInfoDAOImpl();
        //调用DAO，判断用户名和密码是否正确
        CustomerInfo customerInfo = customerInfoDAO.findByNameAndPwd(username, password);
        System.out.println(customerInfo);
        if (customerInfo == null) {
            //重定向到登陆界面
            response.getWriter().println("<head>\n" +
                    "  <meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\">\n" +
                    "</head>" +
                    "<script>\n" +
                    "    alert('用户名或密码错误');\n" +
                    "    window.location.assign('" + request.getContextPath() + "/qtLogin.jsp')\n" +
                    "  </script>");
        } else {
            //登陆成功
            ICustomerDetailInfoDAO customerDetailInfoDAO = new CustomerDetailInfoDAOImpl();
            CustomerDetailInfo customerDetailInfo = customerDetailInfoDAO.findById(customerInfo.getCustId());
            //得到session
            HttpSession session = request.getSession();
            session.setAttribute("customerInfo", customerInfo);
            session.setAttribute("customerDetailInfo", customerDetailInfo);
            //重定向到下订单界面
            response.sendRedirect("makeOrder.jsp");
        }
    }
}
