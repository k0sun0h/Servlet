<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 기본 문법</title>
</head>
<body>
	<h3>기본 문법</h3>
	
	<!-- html의 주석: 소스보기에서 보인다 -->
	<%-- jsp의 주석: 소스보기에서 보이지 않는다 --%>
	
	<%-- 1부터 10까지의 합을 h3태그로 표시 --%>
	<%
		// java 문법 시작 --> 자바 주석
		// scriptlet
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum += i;
		}
		
		//out.println("<h3>합계 : " + sum + "</h3>");
	%>

	<h3>합계: <%= sum %></h3>
	<input type="text" value="<%= sum %>">
	<br>

	<div><%= sum * 2 %></div>
	
	<h3>리스트 다루기</h3>
	<%
	
		List<String> animals = new ArrayList<>();
		animals.add("강아지");
		animals.add("고양이");
	
	%>

	<ul>
		<li><%=animals.get(0) %></li>
		<li><%=animals.get(1) %></li>
	</ul>

	<h3>메소드 만들기</h3>
	<%!
		//hello world를 문자열로 리턴하는 메소드 
		public String getHelloWorld() {
			return "hello world";
		}
	%>

	<%= getHelloWorld() %>
</body>
</html>