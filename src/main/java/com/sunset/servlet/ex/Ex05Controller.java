package com.sunset.servlet.ex;

import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex05Controller extends HttpServlet {

	// 파라미터가 
	// 보안에 민감한 데이터가 포함되어 있는지
	//긴 데이터가 포함되어 있는지 
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		
		// 이름 생년월일 전달 받고, 이름과 나이를 html로 구성 
		String name = request.getParameter("name");
		String birthDay = request.getParameter("birthday");
		// 20040116
		String yearString = birthDay.substring(0, 4);
		int year = Integer.parseInt(yearString);
		
		int age = 2022 - year + 1;
		
		out.println("<html><head><title>post method</title></head> <body>");
		
		out.println("이름 : " + name);
		out.println("나이 : " + age);
		
		out.println("</body></html>");
		
	}
	
}
