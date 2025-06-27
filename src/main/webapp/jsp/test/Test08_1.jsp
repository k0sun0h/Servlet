<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 목록</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">  
</head>
<body>
	<%
	    List<Map<String, Object>> list = new ArrayList<>();
	    Map<String, Object> map = new HashMap<String, Object>() {
	        {
	            put("id", 1000);
	            put("title", "아몬드");
	            put("author", "손원평");
	            put("publisher", "창비");
	            put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791198363503.jpg");
	        }
	    };
	    list.add(map);
	
	    map = new HashMap<String, Object>() {
	        {
	            put("id", 1001);
	            put("title", "사피엔스");
	            put("author", "유발 하라리");
	            put("publisher", "김영사");
	            put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9788934972464.jpg");
	        }
	    };
	    list.add(map);
	
	    map = new HashMap<String, Object>() {
	        {
	            put("id", 1002);
	            put("title", "코스모스");
	            put("author", "칼 세이건");
	            put("publisher", "사이언스북");
	            put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9788983711892.jpg");
	        }
	    };
	    list.add(map);
	
	    map = new HashMap<String, Object>() {
	        {
	            put("id", 1003);
	            put("title", "나미야 잡화점의 기적");
	            put("author", "히가시노 게이고");
	            put("publisher", "현대문학");
	            put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/4808972756194.jpg");
	        }
	    };
	    list.add(map);
	%>
		<div class="container">
			<h2 class="text-center">책 목록</h2>
			
			<table class="table text-center">
				<thead>
					<tr>
						<th>id</th>
						<th>표지</th>
						<th>제목</th>
					</tr>
				</thead>
				<tbody>
				<% 
				for(Map<String, Object> book:list) { %>
					<tr>
						<td><%=book.get("id") %></td>
						<td><img src="<%=book.get("image") %>" width="120"></td>
						<td><a href="/jsp/test/Test08_2.jsp?id=<%=book.get("id") %>" class="display-4"><%=book.get("title") %></a></td>
					</tr>
				<%}%>
				</tbody>
			</table>
		</div>
</body>
</html>