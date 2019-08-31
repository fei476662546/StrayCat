package com.interceptor;

import com.entity.Admit;
import com.entity.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Create by mysteriousTime
 * time on 2019/8/31  15:41
 */
public class LoginHandlerIntercepter implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        User user = (User) request.getSession().getAttribute("User");
        Admit admit = (Admit) request.getSession().getAttribute("Admit");
        System.out.println("User:" + user + ",Admit:" + admit);
        String requestURI = request.getRequestURI();//
        String uri = requestURI.substring(requestURI.lastIndexOf("/"));//切割“/”后的字符
        if (user != null && admit == null) {
            if (uri.startsWith("/users") || uri.startsWith("/pets") || uri.startsWith("/pingluns") || uri.startsWith("/adoptApply") || uri.startsWith("/teamList")) {
                String loginUrl = "/user/index";
                System.out.println("重定向=========" + request.getContextPath() + loginUrl);
                request.getSession().setAttribute("handlerMsg", "请先登录");
                response.sendRedirect(request.getContextPath() + loginUrl);
                System.out.println("重定向=========" + request.getContextPath() + loginUrl);
                return false;
            } else {
                return true;
            }
        }
        if (admit != null) {
            return true;
        }
        if (user == null && admit == null) {
            if (uri.startsWith("/service") || uri.startsWith("/users") || uri.startsWith("/pets") || uri.startsWith("/pingluns") || uri.startsWith("/adoptApply") || uri.startsWith("/teamList")) {
                String loginUrl = "/user/index";
                System.out.println("重定向=========" + request.getContextPath() + loginUrl);
                request.getSession().setAttribute("handlerMsg", "请先登录");
                response.sendRedirect(request.getContextPath() + loginUrl);
                System.out.println("重定向=========" + request.getContextPath() + loginUrl);
                return false;
            } else {
                return true;
            }
        }
        return true;
    }


    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        System.out.println("进入了 postHandle。。。。。。。。。。。。");
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        System.out.println("进入了 afterCompletion。。。。。。。。。。。。");
    }
}
