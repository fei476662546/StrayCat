package com.filter;

import com.entity.Admit;
import com.entity.User;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.logging.LogRecord;

/**
 * Create by mysteriousTime
 * time on 2019/8/31  22:57
 */
public class LoginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        String uri = request.getRequestURI();
        User user = (User) request.getServletContext().getAttribute("User");
        Admit admit = (Admit) request.getSession().getAttribute("Admit");
        if (user == null && admit == null) {
            if (uri.contains("/admitHome.jsp") || uri.contains("/adoptApply.jsp") || uri.contains("/petMessage.jsp")
                    || uri.contains("/teamMessage.jsp") || uri.contains("/userComment.jsp") || uri.contains("/userMessage")
                    || uri.contains("/show.jsp") || uri.contains("person.jsp")) {
                request.getSession().setAttribute("handlerMsg", "请先登录");
                request.getRequestDispatcher("/app/home.jsp").forward(servletRequest, servletResponse);
            }
        }
        else if (user != null && admit == null) {
            //获取全局变量登录名，判断是否登录！
            if (uri.contains("/admitHome.jsp") || uri.contains("/adoptApply.jsp") || uri.contains("/petMessage.jsp")
                    || uri.contains("/teamMessage.jsp") || uri.contains("/userComment.jsp") || uri.contains("/userMessage")) {
                request.getSession().setAttribute("handlerMsg", "请先登录");
                request.getRequestDispatcher("/app/home.jsp").forward(servletRequest, servletResponse);
            } else {
                chain.doFilter(servletRequest, servletResponse);
            }
        }
        chain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {

    }
}
