<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<title>Episode List</title>
</head>
<body>
	<h1 class="viewlist">Episode List</h1>
	<div class="viewlist">
		<c:forEach items="${episodes}" var="episode">
			<a href="getEpisode.do?fid=${episode.id}" class="viewlist">${episode.title}</a>
			<br>
		</c:forEach>
	</div>
	<form action="goHome.do" method="GET">
		<input type="submit" id="listhome" class="btn btn-outline-light"
			value="Return to Home Page" />
	</form>

</body>
</html>