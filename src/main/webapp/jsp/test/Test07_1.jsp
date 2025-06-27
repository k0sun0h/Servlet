<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 검색</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">  
</head>
<body>
	<form method="post" action="/jsp/test/Test07_2.jsp">
		<div class="container">
			<h2>메뉴 검색</h2>
			
			<div class="d-flex align-items-center">
				<input type="text" class="form-control col-2 mr-2" name="item">
				<label><input type="checkbox" name="pointFilter" value="true"> 4점 이하 제외</label>
			</div>
			
			<button type="submit" class="btn btn-success mt-2">검색</button>
		</div>
	</form>
</body>
</html>