<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="com.sunset.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">  
</head>
<body>

	<%
		MysqlService mysqlService = MysqlService.getInstance();
	
		mysqlService.connect();
		
		String query = "SELECT * FROM `favorite` ORDER BY `id` DESC";
		List<Map<String, Object>> urlList = mysqlService.select(query);
	%>

	<div class="container">
		<table class="table text-center">
			<thead>
				<tr>
					<th>사이트</th>
					<th>사이트 주소</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
			<% for(Map<String, Object> list:urlList) { %>
					<tr>
						<td><%= list.get("name") %></td>
						<td><a href="<%= list.get("url") %>"><%= list.get("url") %></a></td>
						<td><a href="/db/favorite/delete?id=<%= list.get("id") %>">삭제</a></td>
					</tr>
			<% } %>
			</tbody>
		</table>
	</div>
	
</body>
</html>