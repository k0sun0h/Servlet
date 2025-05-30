package com.sunset.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test05")
public class Test05Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
//		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		String number = request.getParameter("number");
		int dan = Integer.parseInt(number);
		
		out.println(""
				+ "<html>\n"
				+ "		<head><title>구구단</title></head>\n"
				+ "		<body>\n"
				+ " 		<ul>\n");
		
		for(int i = 1; i <= 9; i++) {
			out.println(""
					+ " 			<li>" + dan + " X " + i + " = " + (dan * i) + "</li>\n");
		}
		
		out.println(""
				+ " 		</ul>\n"
				+ " 	</body>\n"
				+ "</html>");
	}
}