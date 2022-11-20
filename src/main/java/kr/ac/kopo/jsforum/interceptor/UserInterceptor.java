package kr.ac.kopo.jsforum.interceptor;

import kr.ac.kopo.jsforum.model.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class UserInterceptor extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");
        if(user != null) {
            System.out.println("UserInterceptor: TRUE");
            return true;
        }

        String query = request.getQueryString();
        session.setAttribute("target_url", request.getRequestURI() + (query != null ? "?" + query : "") );
        System.out.println("INTERCEPTOR: " + session.getAttribute("target_url"));

        response.sendRedirect("/login");

        System.out.println("UserInterceptor: FALSE");
        return false;
    }
}
