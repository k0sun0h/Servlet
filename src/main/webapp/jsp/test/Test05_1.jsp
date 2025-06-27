<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">  
</head>
<body>
	<form method="post" action="/jsp/test/Test05_2.jsp">
		<div class="container">
			<h2>길이 변환</h2>
			
			<div class="d-flex align-items-end mb-2">
				<input type="text" class="form-control col-2 mr-2" name="num"><span>cm</span>
			</div>
			
			<div>
				<label >인치 <input type="checkbox" value="inch" name="type"></label>
				<label class="ml-2">야드 <input type="checkbox" value="yard" name="type"></label>
				<label class="ml-2">피트 <input type="checkbox" value="feet" name="type"></label>
				<label class="ml-2">미터 <input type="checkbox" value="meter" name="type"></label>
			</div>
			
			<button type="submit" class="btn btn-success">변환</button>
		</div>
	</form>
</body>
</html>