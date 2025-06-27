<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>노래 리스트</title>

<link rel="stylesheet" href="Test10.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">  
</head>
<body>
<%
	// 아티스트 정보 
    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "https://musicmeta-phinf.pstatic.net/artist/000/112/112579.jpg?type=ff300_300");


	// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
%>
	<div id="wrap">
		<form method="post" action="/jsp/test/Test10_2.jsp">
			<header class="d-flex align-items-center">
				<h2 class="logo text-success">Melong</h2>
				<div class="search input-group col-4 ml-4">
					<input type="text" class="form-control" name="keyword">
					<button type="submit" class="btn btn-success">검색</button>
				</div>
			</header>
		</form>
		<nav class="main-menu">
			<ul class="nav">
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">멜롱차트</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">최신음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">장르음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">멜롱DJ</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">뮤직어워드</a></li>
			</ul>
		</nav>
		<section class="contents">
			<div class="artist d-flex border border-success p-3 rounded">
				<div>
					<img width="200" alt="표지" src="<%= artistInfo.get("photo") %>" />
				</div>
				<div class="ml-3">
					<h2><%=artistInfo.get("name") %></h2>
					<div><%=artistInfo.get("agency") %></div>
					<div><%=artistInfo.get("debute") %></div>
				</div>
			</div>
			
			<div class="list-table mt-4">
				<h4>곡 목록</h4>
				
				<table class="table text-center">
					<thead>
				 		<tr>
				 			<th>no</th>
							<th>제목</th>
							<th>앨범</th>
				 		</tr>
				 	</thead>
				  	<tbody>
					  	<% for(Map<String, Object> music:musicList) { %>
					  		<tr>
					 			<td><%= music.get("id") %></td>
								<td><a href="/jsp/test/Test10_2.jsp?title=<%= music.get("title") %>"><%= music.get("title") %></a></td>
								<td><%= music.get("album") %></td>
					 		</tr>
					  	<% } %>
				  	</tbody>
				 </table>
			</div>
		</section>
		
		<footer class="ml-4">
			<hr>
		
			<div class="d-flex align-items-center">
				Copyright 2021. melong All Rights Reserved.
			</div>
		</footer>
	</div>
</body>
</html>