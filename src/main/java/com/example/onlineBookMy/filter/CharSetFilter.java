package com.example.onlineBookMy.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

//使用中文乱码处理过滤器
public class CharSetFilter implements Filter {

    private String charSet = "UTF-8";

    public void init(FilterConfig config) throws ServletException {
        charSet = config.getInitParameter("charSet");
    }

    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain) throws IOException, ServletException {
        //中文乱码处理
        request.setCharacterEncoding(charSet);
        //设置响应的字符编码为UTF-8
        response.setCharacterEncoding(charSet);
        //告诉浏览器以UTF-8编码格式解析响应内容
//        response.setContentType("text/html;charset=UTF-8");
        chain.doFilter(request, response);
    }

    public void destroy() {

    }
}

