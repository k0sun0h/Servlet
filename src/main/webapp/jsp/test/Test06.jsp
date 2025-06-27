<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장 목록</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">  
</head>
<body>
	<%
		List<String> goodsList = Arrays.asList(new String[]{ 
		    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
		});
	%>
	
	<div class="container">
		<h2 class="text-center">장 목록</h2>
		
		<table class="table text-center">
			<thead>
				<tr>
					<th>번호</th>
					<th>품목</th>
				</tr>
			</thead>
			<tbody>
			<% for(int i = 1; i < goodsList.size(); i++) { %>
				<tr>
					<td><%= i %></td>
					<td><%= goodsList.get(i) %></td>
				</tr>
			<%}%>
			</tbody>
		</table>
	</div>
</body>
</html>