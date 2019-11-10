<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Episode List</title>
</head>
<body>

<c:forEach items="${episodes}" var="episode">
		<a href="getEpisode.do?fid=${episode.id}">${episode.title}</a>
		<br>
	</c:forEach>
	<form action="/" method="GET">
		<input type="submit" class="btn btn-outline-light"
			value="Return to Home Page" />
	</form>

</body>
</html>