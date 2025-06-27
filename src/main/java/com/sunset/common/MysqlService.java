package com.sunset.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
	private Connection connection;
	
	// 데이터베이스 접속 기능
	public boolean connect() {
		
		try {
			
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			
			String url = "jdbc:mysql://localhost:3306/sunh";
			String username = "root";
			String password = "ksh0116";
			
			connection = DriverManager.getConnection(url, username, password);
			
		} catch (SQLException e) {

			e.printStackTrace();
			
			// 접속 실패 
			return false;
			
		}
		
		return true;
		
	}
	
	// 조회 쿼리 수행기능
	public ResultSet select(String query) {
		
		Statement statement;
		try {
			
			statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(query);
			
			return resultSet;
			
		} catch (SQLException e) {

			e.printStackTrace();
			
			return null;
			
		}

	}
	
	//데이터베이스 접속 끊기
	public boolean disconnect() {
		
		try {
			
			connection.close();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
			// 접속 실패 
			return false;
			
		}
		
		return true;
		
	}
	
}