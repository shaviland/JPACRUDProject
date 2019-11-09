<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Episode Directory</title>
</head>
<body>
	<form action="getEpisode.do" method="GET">
		Look Up Episode By ID: <input type="text" name="fid" /> <input type="submit"
			value="Show Episode" /> <br>
	</form>
		<form action="createEpisode.do" method="GET">
		<input type="submit" class="btn btn-outline-light"
			value="Add An Episode" />
	</form>
	<c:forEach items="${episodes}" var="episode">
		<a href="getEpisode.do?fid=${episode.id}">${episode.title}</a>
		<br>
	</c:forEach>

	
</body>
</html>