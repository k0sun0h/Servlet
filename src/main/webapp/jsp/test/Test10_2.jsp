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
<title>노래 세부사항</title>

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
    
    String musicTitle = request.getParameter("title");
    String keywordTitle = request.getParameter("keyword");
%>
	<div id="wrap">
		<header class="d-flex align-items-center">
			<h2 class="logo text-success">Melong</h2>
			<div class="search input-group col-4 ml-4">
				<input type="text" class="form-control" name="keyword">
				<button class="btn btn-success">검색</button>
			</div>
		</header>
		<nav class="main-menu">
			<ul class="nav">
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">멜롱차트</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">최신음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">장르음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">멜롱DJ</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">뮤직어워드</a></li>
			</ul>
		</nav>
		<section class="contents mt-4">
			<h4>곡 정보</h4>
			
			<% for(Map<String, Object> music:musicList) { %>
				<% if((musicTitle != null && musicTitle.equals(music.get("title"))) || (musicTitle == null && keywordTitle.equals(music.get("title")))) { %>
					<% 
					int min = ((Integer)music.get("time")) / 60; 
					int sec = ((Integer)music.get("time")) % 60; 
					%>
					
					<div class="artist d-flex border border-success p-3 rounded">
						<div>
							<img width="200" alt="표지" src="<%= music.get("thumbnail") %>" />
						</div>
						<div class="ml-3">
							<h2 class="mt-1"><%=music.get("title") %></h2>
							<h4 class="text-success font-weight-bold mb-4"><%=music.get("singer") %></h4>
							<div>앨범 <b><%=music.get("album") %></b></div>
							<div>재생시간 <b><%=min %>:<%=sec %></b></div>
							<div>작곡가 <b><%=music.get("composer") %></b></div>
							<div>작사가 <b><%=music.get("lyricist") %></b></div>
						</div>
					</div>
				<% } %>
			<% } %>
			
			<div class="list-table mt-4">
				<h4>가사</h4>
				
				<hr>
				
				<p>가사 정보 없음</p>
			</div>
		</section>
		
		<footer>
			<hr>
		
			<div class="d-flex align-items-center ml-4">
				Copyright 2021. melong All Rights Reserved.
			</div>
		</footer>
	</div>
</body>
</html>