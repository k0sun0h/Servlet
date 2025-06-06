package com.sunset.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class Test09Controller extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String introduce = request.getParameter("introduce");
	
		out.println("<html><head><title>지원 완료</title></head> <body>");
		
		out.println("<h2>" + name + "님 지원이 완료되었습니다.</h2>\n");
		out.println("<hr>");
		out.println("<div>지원 내용</div>\n");
		out.println("<div>" + introduce + "</div>\n");
		
		out.println("</body></html>");
	}
}