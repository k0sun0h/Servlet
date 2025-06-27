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
<title>장 목록</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">  
</head>
<body>
	<%
	String item = request.getParameter("item");
	String pointFilter = request.getParameter("pointFilter");
	
	List<Map<String, Object>> list = new ArrayList<>();
	    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
	    list.add(map);
	%>
	
	<div class="container">
		<h2 class="text-center">검색 결과</h2>
		
		<table class="table text-center">
			<thead>
				<tr>
					<th>메뉴</th>
					<th>상호</th>
					<th>별점</th>
				</tr>
			</thead>
			<tbody>
			<% 
			for(Map<String, Object> items:list) { 
				String menu = (String)items.get("menu");
				
				if(menu.equals(item)) {
					Double point = (Double)items.get("point");
					
					if("true".equals(pointFilter)) { 
						if(point > 4.0) { %>
							<tr>
								<td><%= items.get("menu") %></td>
								<td><%= items.get("name") %></td>
								<td><%= items.get("point") %></td>
							</tr>
						<%
						}
					} else { %>
						<tr> 
							<td><%= items.get("menu") %></td>
							<td><%= items.get("name") %></td>
							<td><%= items.get("point") %></td>
						</tr>
					<%
					}
					
				} else if (item == "") { %>
					<tr> 
						<td><%= items.get("menu") %></td>
						<td><%= items.get("name") %></td>
						<td><%= items.get("point") %></td>
					</tr>
				<%
				}
				
			}%>
			</tbody>
		</table>
	</div>
</body>
</html>