<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변환 결과</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">  
</head>
<body>
	<%
		int num = Integer.parseInt(request.getParameter("num"));
		String[] types = request.getParameterValues("type");
	%>
	
	<div>
		<h1>변환 결과</h1>
		<h3><%=num %> cm</h3>
		
		<hr>
		
		<%	
			for(int i = 0; i < types.length; i++) {
				String type = types[i];
				
				if(type.equals("inch")) {
					double inch = num * 0.39; 
				%>
					<h3> <%=inch %> in<br></h3>
				<%	
				} else if(type.equals("yard")) {
					double yard = num * 0.010936133;
					%>
					
					<h3> <%=yard %> yd <br> </h3>
				<%
				} else if(type.equals("feet")) {
					double feet = num * 0.032808399;
					%>
					
					<h3> <%=feet %> ft <br></h3>
					
				<%
				} else if(type.equals("meter")) {
					double meter = num / 100.0;
					%>
					
					<h3><%=meter %> m <br></h3>
				<%
				}
			}
		%>
	</div>
</body>
</html>