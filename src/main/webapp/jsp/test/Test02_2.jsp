<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	double height = Integer.parseInt(request.getParameter("cm")) / 100.0;
	int weight = Integer.parseInt(request.getParameter("kg"));
	
	double bmi =  weight / (height * height);
	
	String state = "";
	if(bmi < 18.5) {
		state = "저체중";
	} else if(bmi < 25) {
		state = "정상";
	} else if(bmi < 30) {
		state = "과체중";
	} else {
		state = "비만";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 계산</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">  
</head>
<body>
	<div class="container"> 
		<h1>BMI 측정 결과</h1>
		
		<div class="display-4"> 당신은 <span class="text-info"><%=state %></span> 입니다. </div>
		
		<div class="mt-2">
			BMI 수치 : <%= bmi %>
		</div>
	</div>
</body>
</html>