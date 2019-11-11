<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link href="style.css" rel="stylesheet" type="text/css">
<title>Episode Creation</title>
</head>
<body>
	<h1 class="title">Create Episode</h1>
	<div class="form">
	<form:form name="Form1" class="create" action="addEpisode.do" method="GET"
		modelAttribute="episode">

		<form:label path="title">Title:</form:label><br>
		<form:input path="title" required="required" />
		<form:errors path="title" />
		<br />
		<form:label path="era">Era:</form:label><br>
		<form:select path="era">
			<option value="classic">Classic</option>
			<option value="revived">Revived</option>
		</form:select>
		<form:errors path="era" />
		<br />
		<form:label path="season">Season: </form:label><br>
		<form:input path="season" min="1" type="number" required="required" />
		<form:errors path="season" />
		<br />
		<form:label path="episodeNum">Episode Number: </form:label><br>
		<form:input path="episodeNum" min="1" type="number"
			required="required" />
		<form:errors path="episodeNum" />
		<br />
		<form:label path="doctor">Doctor: </form:label><br>
		<form:input path="doctor" required="required" />
		<form:errors path="doctor" />
		<br />
		<form:label path="villain">Villain: </form:label><br>
		<form:input path="villain" />
		<form:errors path="villain" />
		<br />
		<form:label path="planet">Planet: </form:label><br>
		<form:input path="planet" />
		<form:errors path="planet" />
		<br />
		<form:label path="yearSet">Set in: </form:label><br>
		<form:input path="yearSet" />
		<form:errors path="yearSet" />
		<br />
		<form:label path="description">Description:</form:label><br>
		<form:input path="description" required="required" />
		<form:errors path="description" />
		<br />

		<input type="submit" class="btn btn-outline-light list"
			value="Create Episode" />
	</form:form>
		</div>
	<div class="infobuttons">
		<form action="goHome.do" method="GET">
			<input type="submit" class="btn btn-outline-light list"
				value="Return to Home Page" />
		</form>
	</div>
</body>
</html>