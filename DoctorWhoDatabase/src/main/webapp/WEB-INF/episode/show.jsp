<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Episode Information</title>
</head>
<body>
	<div>
		<h1>${episode.title}</h1>
		<h3>${episode.era}Who</h3>
		<p>Season: ${episode.season}</p>
		<p>Episode: ${episode.episodeNum}</p>
		<p>Doctor: ${episode.doctor}</p>
		<p>Villain: ${episode.villain}</p>
		<p>Planet: ${episode.planet}</p>
		<p>Set in: ${episode.yearSet}</p>
		<p>Description: ${episode.description}</p>
	</div>
	<form action="/" method="GET">
		<input type="submit" class="btn btn-outline-light"
			value="Return to Home Page" />
	</form>
</body>
</html>
