package com.sunset.database.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sunset.common.MysqlService;

@WebServlet("/db/favorite/create")
public class FavoriteCreateController extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		// 입력할 정보를 전달 받는다
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		MysqlService mysqlservice = MysqlService.getInstance();
		mysqlservice.connect();
		
		String query = "INSERT INTO `favorite` (`name`, `url`) \r\n"
				+ "VALUE \r\n"
				+ "('"+ name + "', '"+ url + "');";
		
		int count = mysqlservice.update(query);
		
		//redirect : response에 새롭게 요청할 url path를 전달 
		response.sendRedirect("/db/favorite/favorite.jsp");
		
	}
	
}