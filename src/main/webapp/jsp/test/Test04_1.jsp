<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사칙연산</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">  
</head>
<body>
	<form method="post" action="/jsp/test/Test04_2.jsp">
		<div class="container">
			<h2>사칙연산</h2>
			
			<div class="d-flex">
				<input type="text" class="form-control col-3" name="num1">
				<select class="form-control col-1 mx-2" name="operator">
					<option value="plus">+</option>
					<option value="minus">-</option>
					<option value="multiple">X</option>
					<option value="divide">÷</option>
				</select>
				<input type="text" class="form-control col-3" name="num2">
				<button type="submit" class="btn btn-success mx-2">계산</button>
			</div>
		</div>
	</form>
</body>
</html>