package com.hades.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.hades.pojo.PbAdmin;


public class SessionInterceptor implements HandlerInterceptor{
	//定义不需要拦截的请求
	private static final String[] IGNORE_URI={"/admin/login"};
	
	/**
	 * 该方法需要preHandle方法的返回值为true时才会执行。
	 * 该方法将在整个请求完成之后执行，主要作用是用于清理资源
	 */
	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception exception)
			throws Exception {
		
	}

	/**
	 * 这个方法在preHandle方法返回值为true的时候才会执行
	 * 执行时间是在处理器进行处理之后，也就是在Controller的方法调用之后执行
	 */
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response,
			Object handler, ModelAndView mv) throws Exception {
		
	}

	/**
	 * preHandle方法是进行处理器拦截用的，该方法将在Controller处理之前进行调用，
	 * 当preHandle的返回值为false的时候整个请求就结束了。
	 * 如果preHandle的返回值为true，则会继续执行Controller，postHandle和afterCompletion。
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object handler) throws Exception {
		String url = request.getRequestURI();  
        if(url.indexOf("login")>=0 || url.indexOf("check_adminLogin")>=0){  
            return true; 
        }
		PbAdmin pbAdmin = (PbAdmin) request.getSession().getAttribute("pbAdmin");
		if(pbAdmin!=null){
			return true;
		}
		response.sendRedirect("/admin/login");
		return false;
	}
}
