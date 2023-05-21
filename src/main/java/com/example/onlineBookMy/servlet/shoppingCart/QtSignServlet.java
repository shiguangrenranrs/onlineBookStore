package com.example.onlineBookMy.servlet.shoppingCart;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
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

public class QtSignServlet extends HttpServlet {

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
        String email = request.getParameter("email");
        System.out.println(username);
        System.out.println(password);
        System.out.println(email);

        ICustomerInfoDAO customerInfoDAO = new CustomerInfoDAOImpl();
        //调用DAO，判断用户名和密码是否正确
        String result = customerInfoDAO.saveNewCustomer(username, password, email);
        System.out.println(result);
        if (result.equals("OK")) {
            response.getWriter().println("<head>\n" +
                    "  <meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\">\n" +
                    "</head>" +
                    "<script>\n" +
                    "    alert('注册成功，请前往登录');\n" +
                    "    window.location.assign('" + request.getContextPath() + "/qtLogin.jsp')\n" +
                    "  </script>");
        } else {
            response.getWriter().println("<head>\n" +
                    "  <meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\">\n" +
                    "</head>" +
                    "<script>\n" +
                    "    alert(" + result + ");\n" +
                    "    window.location.assign('" + request.getContextPath() + "/qtSign.jsp')\n" +
                    "  </script>");
        }
    }
}
