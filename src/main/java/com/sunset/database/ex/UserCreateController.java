package com.sunset.database.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sunset.common.MysqlService;


@WebServlet("/db/user/create")
public class UserCreateController extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		// 입력할 정보를 전달 받는다
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		String email = request.getParameter("email");
		String introduce = request.getParameter("introduce");
		
		MysqlService mysqlservice = MysqlService.getInstance();
		mysqlservice.connect();
		
		String query = "INSERT `new_user`\r\n"
				+ "(`name`, `yyyymmdd`, `email`, `introduce`)\r\n"
				+ "VALUE \r\n"
				+ "('"+ name + "', '"+ birthday + "', '"+ email +"', '"+ introduce +"');";
		
		int count = mysqlservice.update(query);
		
		// 클라이언트야 내가 너한테 줄 정보는 없고, list.jsp 에 다시 요청하면 조회 결과를 볼 수 있을거야
		// 그러니까 list.jsp로 새롭게 요청해
		
		//redirect : response에 새롭게 요청할 url path를 전달 
		
		out.println("실행결과 : " + count);
		response.sendRedirect("/db/user/list.jsp");
		
	}
	
}