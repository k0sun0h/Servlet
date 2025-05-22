package com.sunset.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		//이름과 생년월일을 전달 받고, 이름과 나이를 html로 구성 
		
		//이름과 나이 정보만 전달
		
		response.setCharacterEncoding("utf-8");
//		response.setContentType("text/html");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		//이름과 생년월일을 전달 받기
		//request에서 name이란 이름으로 값을 꺼내 쓸테니 채워라 
		//request에서 birthday란 이름으로 값을 꺼내 쓸거니 20040116 형식으로 채워라
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		
		String yearString = birthday.substring(0, 4);
		int year = Integer.parseInt(yearString);
		
		int age = 2025 - year;
		
		//김선혜, 21
		//테이터를 전달하기 위한 문자열 규격
		//JSON (Javascript Object Notation)
		//{"name":"김선혜", "age":21}
		// ["김선혜", "이서연", "김채린"]
		
		out.println("{\"name\":\"" + name + "\", \"age\":" + age + "}");
		
//		out.println(""
//				+ "<html>\n"
//				+ "		<head><title>리스트</title></head>\n"
//				+ "		<body>\n"
//				+ " 		<h3>이름 : " + name + "</h3>\n"
//				+ " 		<h3>나이 : " + age + "</h3>\n"
//				+ " 	</body>\n"
//				+ "</html>");
	}
}
