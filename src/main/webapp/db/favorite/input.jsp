<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이트 추가</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">  
</head>
<body>

	<div class="container">
		<h2>즐겨찾기 추가</h2>
		
		<form method="post" action="/db/favorite/create">
			<label class="mt-3">사이트명 : </label><input type="text" class="form-control col-4" name="name">
			<label class="mt-3">사이트 주소 : </label><input type="text" class="form-control col-6" name="url">
			<button type="submit" class="btn btn-success mt-3">추가</button>
		</form>
	</div>
	
</body>
</html>