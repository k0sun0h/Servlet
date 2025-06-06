<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String what = request.getParameter("what");
	Date now = new Date();
		
	SimpleDateFormat formatter = null;
	
	if(what.equals("time")) {
		formatter = new SimpleDateFormat("현재 시간 H시 m분 s초");
	} else if(what.equals("date")) {
		formatter = new SimpleDateFormat("오늘 날짜 yyyy년 M월 d일");	
	}
	
	String text = formatter.format(now);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> 
</head>
<body>
	<div class="container">
		<div class="h-100 align-middle display-1"><%=text %></div>
	</div>
</body>
</html>