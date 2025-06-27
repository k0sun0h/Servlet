<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자료구조 다루기</title>
</head>
<body>
	<%
		// 과일 이름 리스트 
		List<String> fruits = new ArrayList<>();
		fruits.add("사과");
		fruits.add("바나나");
		fruits.add("딸기");
	%>
	
	<table border="1">
	<%
		for(String fruit:fruits) { %>
			<tr>
				<td><%= fruit %></td>
			</tr>
	<%}%>
	
	</table>
	
	<%
		// 과목과 성적 맵
		Map<String, Integer> scores1 = new HashMap<>();
	
		scores1.put("국어", 85);
		scores1.put("수학", 90);
		scores1.put("영어", 100);
		
		Map<String, Integer> scores2 = new HashMap<>();
		
		scores2.put("국어", 100);
		scores2.put("수학", 90);
		scores2.put("영어", 70);
		
		List<Map<String, Integer>> scoreList = new ArrayList<>();
		
		scoreList.add(scores1);
		scoreList.add(scores2);
	%>
	
	<table border="1">
		<thead>
			<tr>
				<th>국어</th>
				<th>수학</th>
				<th>영어</th>
			</tr>
		</thead>
		<tbody>
			<%
				for(Map<String, Integer> student:scoreList) { %>
					<tr>
						<td><%= student.get("국어") %></td>
						<td><%= student.get("수학") %></td>
						<td><%= student.get("영어") %></td>
					</tr>
			<%}%>
		</tbody>
	</table>
</body>
</html>