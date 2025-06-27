<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산결과</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">  
</head>
<body>
	<%
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		String operatString = request.getParameter("operator");
		
		String operator = "";
		double result = 0;
		
		if(operatString.equals("plus")) {
			result = num1 + num2;
			operator = "+";
		} else if(operatString.equals("minus")) {
			result = num1 - num2;
			operator = "-";
		} else if(operatString.equals("multiple")) {
			result = num1 * num2;
			operator = "X";
		} else {
			result = num1 / num2;
			operator = "÷";
		}
	%>
	
	<div>
		<h1>계산결과</h1>
		
		<div class="display-3">
			<%=num1 %> <%=operator %> <%=num2 %> = <span class="text-primary"><%=result %></span>
		</div>
	</div>
</body>
</html>