<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GET Method</title>
</head>
<body>
	<%
		String birthdayString = request.getParameter("birthday");
		String yearString = birthdayString.substring(0, 4);
		int year = Integer.parseInt(yearString);
		int birthday = 2025 - year + 1;
	%>

	<%-- request 객체는 jsp에서 바로 사용 가능 --%>
	<table border="1">
		<tr>
			<th>이름</th>
			<td><%= request.getParameter("name") %></td>
		</tr>
		<tr>
			<th>나이</th>
			<td><%= birthday %></td>
		</tr>
	</table>
</body>
</html>