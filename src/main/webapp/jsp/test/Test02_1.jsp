<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 입력</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">  
</head>
<body>
	<h2>체격 조건 입력</h2>
	
	<form action="/jsp/test/Test02_2.jsp" method="get">
		<div class="d-flex">
			<input class="form-control col-3" name="cm" placeholder="키를 입력하세요."><div class="ml-1 mt-3">cm</div></label>
			<input class="form-control col-3 ml-2" name="kg" placeholder="몸무게를 입력하세요."><div class="ml-1 mt-3">kg</div></label>
			<button type="sumbit" class="btn btn-info col-2 ml-2">계산</button>
		</div>
	</form>
</body>
</html>