package com.mvc.Final.common.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LogFilter implements Filter{

	private Logger logger = LoggerFactory.getLogger(LogFilter.class);
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		HttpServletRequest req = (HttpServletRequest) request;
		
		String remoteAddr = req.getRemoteAddr();
		String url = req.getRequestURL().toString();
		String queryString = req.getQueryString();
		
		//사용자 정보나 referer은 request의 header에 들어가 있다.
		String referer = req.getHeader("referer");
		String agent = req.getHeader("User-Agent");
		
		StringBuffer sb = new StringBuffer();
		sb.append("remonteAddr: "+remoteAddr+"\n")	//ip주소
		.append("url: "+url+"\n")					//url
		.append("queryString: "+queryString+"\n")	//쿼리스트링
		.append("referer: "+referer+"\n")			//이전페이지 url
		.append("agent: "+agent);					//사용자정보
		
		logger.info("LOG FILTER\n"+sb);
		chain.doFilter(req, response);
		
	}

	@Override
	public void destroy() {
		
	}

}
