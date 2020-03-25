package com.filter;

import com.entity.Admit;
import com.entity.User;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.LogRecord;

/**
 * Create by mysteriousTime
 * time on 2019/8/31  22:57
 */
public class LoginFilter implements Filter {
    //存储编码格式信息
    private String encode = null;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
//获取在web.xml文件中配置了的编码格式的信息
        this.encode = filterConfig.getInitParameter("encode");
        System.out.println("编码格式为："+encode);

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {

//        HttpServletRequest request = (HttpServletRequest) servletRequest;
//        HttpServletResponse response= (HttpServletResponse) servletResponse;
//        /*
//         * 判断在web.xml文件中是否配置了编码格式的信息
//         * 如果为空，则设置编码格式为配置文件中的编码格式
//         * 否则编码格式设置为utf-8
//         */
//        if(this.encode != null && !this.encode.equals("")){
//            request.setCharacterEncoding(this.encode);
//            response.setCharacterEncoding(this.encode);
//        }else{
//            request.setCharacterEncoding("utf-8");
//            response.setCharacterEncoding("utf-8");
//        }
//
//
//        String uri = request.getRequestURI();
//        User user = (User) request.getServletContext().getAttribute("User");
//        Admit admit = (Admit) request.getSession().getAttribute("Admit");
//        if (user == null && admit == null) {
//            if (uri.contains("/admitHome.jsp") || uri.contains("/adoptApply.jsp") || uri.contains("/petMessage.jsp")
//                    || uri.contains("/teamMessage.jsp") || uri.contains("/userComment.jsp") || uri.contains("/userMessage")
//                    || uri.contains("/show.jsp") ) {
//                request.getSession().setAttribute("handlerMsg", "请先登录");
//                request.getRequestDispatcher("/app/index.jsp").forward(servletRequest, servletResponse);
//            }
//        }
//        else if (user != null && admit == null) {
//            //获取全局变量登录名，判断是否登录！
//            if (uri.contains("/admitHome.jsp") || uri.contains("/adoptApply.jsp") || uri.contains("/petMessage.jsp")
//                    || uri.contains("/teamMessage.jsp") || uri.contains("/userComment.jsp") || uri.contains("/userMessage.jsp")) {
//                request.getSession().setAttribute("handlerMsg", "请先登录");
//                request.getRequestDispatcher("/app/index.jsp").forward(servletRequest, servletResponse);
//            } else {
//                chain.doFilter(servletRequest, servletResponse);
//            }
//        }
        chain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {

    }
}
