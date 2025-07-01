package com.sunset.database.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sunset.common.MysqlService;

@WebServlet("/db/favorite/delete")
public class FavoriteDeleteController extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		// 입력할 정보를 전달 받는다
		String id = request.getParameter("id");
		
		MysqlService mysqlservice = MysqlService.getInstance();
		mysqlservice.connect();
		
		String query = "DELETE FROM `favorite` WHERE `id` = " + id;
		
		int count = mysqlservice.update(query);
		
		//redirect : response에 새롭게 요청할 url path를 전달 
		response.sendRedirect("/db/favorite/favorite.jsp");
		
	}
	
}