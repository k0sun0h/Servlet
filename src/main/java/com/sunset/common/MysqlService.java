package com.sunset.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MysqlService {
	
	private Connection connection;
	
	// 모듈화 -> 사용법을 숨기기 위한 목적을 가지고 있음
	
	// 클래스를 설계한 입장에서
 	// 해당 클래스의 객체가 두개이상 만들어지지 않도록
 	// 하나의 객체를 공유해서 사용하게 한다.
 	// Singelton pattern !!!
 	// static 변수 : 객체 생성 없이 사용할 수 있는 멤버변수
 	private static MysqlService mysqlService = null;
 	
 	// 해당 클래스의 객체를 return하는 메소드
 	// static 메소드 : 객체 생성없이 사용할 수 있는 메소드
 	// 객체 생성없이 수행되는 기능이기 때문에 객체 생성을 통해서 만들어지는 멤버변수는 사용 불가능
 	public static MysqlService getInstance() { 
 		 	 
 	  if(mysqlService == null) {
 	  
 	    mysqlService = new MysqlService();
 	    
 	  }
 	  
 	  return mysqlService;
 	  
 	} 
	
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
	public List<Map<String, Object>> select(String query) {
		
		Statement statement;
		try {
			
			statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(query);
			
			
			// 조회 결과의 컬럼 목록
			ResultSetMetaData rsmd = resultSet.getMetaData(); // resultSet의 메타데이터에서 'SELECT 결과에 포함된 컬럼(열)의 개수'를 가져옴
			int columnCount = rsmd.getColumnCount();
			
			// 컬럼 이름 리스트
			List<String> columnList = new ArrayList<>();
			for(int i = 1; i <= columnCount; i++) {
				columnList.add(rsmd.getColumnName(i));
			}
			
			List<Map<String, Object>> resultList = new ArrayList<>();
			while(resultSet.next()) {
				
				Map<String, Object> row = new HashMap<>();
				// 하나의 행에서 컬럼 이름으로 모든 값 얻어오기 
				for(String column:columnList) {
					Object value = resultSet.getObject(column);
					
					row.put(column, value);
				}
				
				resultList.add(row);
				
			}
			
			statement.close();
			return resultList;
			
		} catch (SQLException e) {

			e.printStackTrace();
			
			return null;
			
		}

	}
	
	// INSERT, UPDATE, DELETE
	public int update(String query) {
		
		Statement statement;
		try {
			
			statement = connection.createStatement();
			int count = statement.executeUpdate(query);
			
			return count;
			
			
		} catch (SQLException e) {

			e.printStackTrace();
			
			return -1;
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