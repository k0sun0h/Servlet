package com.sunset.database.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/db/test01")
public class Test01Controller extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// real_estate 테이블의 모든 행을 조회
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		// database 접속 
		try {
			
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			
			String url = "jdbc:mysql://localhost:3306/sunh";
			String username = "root";
			String password = "ksh0116";
			
			Connection connection = DriverManager.getConnection(url, username, password);
			
//			// INSERT
//			String query = "INSERT `real_estate`\r\n"
//					+ "(`realtorId`, `address`, `area`, `type`, `price`)\r\n"
//					+ "VALUE \r\n"
//					+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000);";
//			
//			Statement statement = connection.createStatement();
//			
//			int count = statement.executeUpdate(query);
//			
//			out.println("실행 결과 : " + count);
			
			String query = "SELECT * FROM `real_estate` ORDER BY `id` DESC LIMIT 10;";

			// SQL 실행 객체 생성 및 쿼리 실행
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(query);
			
			while(resultSet.next()) {
				String address = resultSet.getString("address");
				int area = resultSet.getInt("area");
				String type = resultSet.getString("type");
				
				out.println("매물 주소 : " + address + " 면적 : " + area + " 타입 : " + type);
			}
			
			// 사용한 Statement와 Connection 객체 정리 (메모리 누수 방지)
			statement.close();
			connection.close();
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		}
	}
}
