<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link href="style.css" rel="stylesheet" type="text/css">
<title>Episode Information</title>
</head>
<body >
	<div class="eplist">
		<h1>${episode.title}</h1>
		<h3>${episode.era} Who</h3>
		<p>Episode Id: ${episode.id}</p>
		<p>Season: ${episode.season}</p>
		<p>Episode: ${episode.episodeNum}</p>
		<p>Doctor: ${episode.doctor}</p>
		<p>Villain: ${episode.villain}</p>
		<p>Planet: ${episode.planet}</p>
		<p>Set in: ${episode.yearSet}</p>
		<p>Description: ${episode.description}</p>
	</div>
	<div class="infobuttons">
	<form action="getOrigEpisode.do" method="GET">
	<input type="hidden" name="epId" value="${episode.id }"> 
		<input type="submit" class="btn btn-outline-light list"
			value="Update Episode" />
	</form>
	<form action="deleteEpisode.do" method="GET">
	<input type="hidden" name="epId" value="${episode.id }"> 
		<input type="submit" class="btn btn-outline-light list"
			value="Delete Episode" />
	</form>
	<form action="goHome.do" method="GET">
		<input type="submit" class="btn btn-outline-light list"
			value="Return to Home Page" />
	</form>
	</div>

</body>
</html>
